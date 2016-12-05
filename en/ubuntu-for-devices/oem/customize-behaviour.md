





# Customizing Behavior

The Savvy API allows downstreams to modify the behavior of system components,
such as the web browser and dialer.

## Browser Modifications

A limited number of browser modifications, such as shipping with preset
bookmarks or a custom home page, are permitted by the Savvy API.

### Preset bookmarks/h3>

Ubuntu Touch's web browser bookmarks are stored in an sqlite database.
Therefore, shipping preset bookmarks involves creating an sqlite database and
placing it in the proper location in the Savvy source tree:

    src/system/home/.local/share/webbrowser-app/bookmarks.sqlite

The database schema is:

    ['url', 'title', 'icon']

### Custom home page

The browser's home page can be set by modifying the following file:

    src/system/home/.config/webbrowser-app/settings.conf

The format of the file should be:

    homepage = http://ubuntu.com/phone

Replace the URL with your desired value.





