---
Title: Navigation
---

# Navigation

Allow the user to retrieve and browse content easily within your scope through great structure and a consistent feel.


-  [Scope header ›](#scope-header)

-  [Category header ›](#category-header)

-  [Departments ›](#departments)


##Scope header


The scope header contains the main title of your scope, together with four elements that can take the user to a different screen or perform an action.


##Actions

![Scope header nav 2](https://assets.ubuntu.com/v1/4008e9d9-Scope-header-nav-2-1024x179.png)


1. **Back – ** present if the scope is opened via tap from an installed scope list as opposed to swiped to in the Dash.

2. **Search – ** allows the user to input a search term.

3. **Settings – ** will take the user to the settings page of the scope where they can enable their location and online accounts to feed the scope.


![link_external](https://assets.ubuntu.com/v1/9e8b37dd-link_external.png)


See our  [Component](/components) section on how to best place these actions inside your scope header.


![developer_links.](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)


For more information on how to implement settings in your scope, see our  [SDK](https://developer.ubuntu.com/en/scopes/design/tutorials/adding-settings-to-your-scope/).


##Category header


Links to child scopes can be placed within the category header.


![Scope links NearBy a](https://assets.ubuntu.com/v1/79432557-Scope-links-NearBy-a2-618x1024.png)

##NearBy scope


![Scope links Timeout b (1)](https://assets.ubuntu.com/v1/02a07bd1-Scope-links-Timeout-b-1-618x1024.png)

##TimeOut scope


If the scope is invoked by an aggregator scope, then it will have a back button.


![information-link](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)


You cannot swipe to navigate through a scope link. You must use a chevron to indicate to the user that it leads somewhere. As swiping may take the user to the next/previous scope.


Scope links can only be added by the scope author.


##Departments


Departments are an optional feature that can be placed under the scope header to give the user a more targeted and narrower search.


![Departments 2](https://assets.ubuntu.com/v1/0f76e6d1-Departments-21-1024x751.png)


##Layout:


1. **Department area (below the header)** – section of the scope layout dedicated to departments.

2. **Content area** – section of the scope layout dedicated to categories.


##Things you can change:

- Naming the top-level department e.g. ‘Shop by department’ or ‘Genres’


![information-link](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)


The scope author chooses what content goes in the navigation paths. Categorize your content to give the user easy access to specific results.


##Hierarchy


Users can navigate through a scope in a single hierarchy navigation or multiple levels.


![Hierarchy 1](https://assets.ubuntu.com/v1/3b0eb504-Hierarchy-13-618x1024.png)


![Hierarchy 2](https://assets.ubuntu.com/v1/6a4c92d1-Hierarchy-22-618x1024.png)


![Hierarchy 3](https://assets.ubuntu.com/v1/b3b11c0d-Hierarchy-32-618x1024.png)


##Single hierarchy


- A chevron is used to indicate to the user that there are options available.

- A checkmark is used to show the user what they have selected.


##Behavior of departments:


- They collapse or expand by default.

- The widget shows departments returned by the scope per query (including “null” query).

- When the top-level department is open a maximum of 5 departments can be shown with a ‘show more’ button included.


![information-link](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)


We use it in some of core scopes such as Music and Shopping, where users can browse by genre or departments.


![developer_links.](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)


Learn how to create departments and use them in queries in our  [SDK](https://developer.ubuntu.com/en/scopes/design/tutorials/adding-departments-to-your-scope/).


##Multiple level hierarchy


Where there are multiple choices in each department branch, the branch is displayed with a chevron to show that tapping it will open a list of its children, rather than selecting an option and closing the menu.


##Department menu


![multiply level 1](https://assets.ubuntu.com/v1/98605bd3-multiply-level-12-618x1024.png)


When the user first comes to the scope they will be presented with an ‘all departments’ menu.


![multiply level 2](https://assets.ubuntu.com/v1/726cf267-multiply-level-22-618x1024.png)


On tap, the menu will expand and reveal a list of available departments.


![multiply level 5](https://assets.ubuntu.com/v1/45d43336-multiply-level-51-618x1024.png)


The menu will then split into two rows”Featured” and the selected department.


In the department view the user can navigate back to ‘all departments’ using the back chevron, or select another category or department.


##Featured menu


![multiple level 4](https://assets.ubuntu.com/v1/e78d262c-multiple-level-41-618x1024.png)


When the user has selected a department, the ‘Featured’ menu will appear on the left hand side of the ‘Department’ menu.


![multiply level 5](https://assets.ubuntu.com/v1/45d43336-multiply-level-52-618x1024.png)


The ‘Featured’ menu allows the user to sort results by order e.g.”Price: high to low”, which changes the view of the results.


![multiple level 6](https://assets.ubuntu.com/v1/d3367513-multiple-level-61-618x1024.png)


Once the user has selected a feature, the scope page will rearrange the results according to the feature selected.


![information-link](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)


Where there are multiple choices in each department branch a chevron is used to indicate to the user that there are options available.


