# Core packages
import os

# External packages
import flask

# Local packages
import routing


application_root = '/phone'
app = flask.Flask(__name__)

permanent_redirect_map = routing.YamlRegexMap("permanent-redirects.yaml")
redirect_map = routing.YamlRegexMap("redirects.yaml")


# Ordered before_request processors
# ===
# The order of these functions must be preserved


@app.before_request
def apply_redirects():
    """
    Process the two mappings defined above
    of permanent and temporary redirects to target URLs,
    to send the appropriate redirect responses
    """

    permanent_redirect_url = permanent_redirect_map.get_target(
        flask.request.path
    )
    if permanent_redirect_url:
        return flask.redirect(permanent_redirect_url, code=301)

    redirect_url = redirect_map.get_target(flask.request.path)
    if redirect_url:
        return flask.redirect(redirect_url)


@app.before_request
def find_file_or_redirect():
    """
    If a file doesn't exist at the requested path, see if it exists at one
    of the other paths, and redirect there if necessary
    """

    # Check the request is within this application
    if not flask.request.path.startswith(application_root):
        return

    # Get a contextual request_path by stripping application_root
    local_request_path = flask.request.path[len(application_root):]

    template_finder = routing.TemplateFinder(app.template_folder)
    file_path = routing.get_file(local_request_path)
    preferred_languages = routing.requested_languages(flask.request)
    if 'en' not in preferred_languages:
        preferred_languages.append('en')
    languages = template_finder.get_languages(preferred_languages)
    versions = routing.get_versions()

    if os.path.isfile(app.template_folder + file_path):
        return flask.render_template(file_path)
    else:
        new_path = template_finder.find_alternate_path(
            local_request_path,
            languages,
            versions
        )

        if new_path:
            return flask.redirect(application_root + new_path)
