# Bookmark Manager

**User Stories**
---

```
As a user
So that I can quickly go to websites I visit regularly
I would like to to see a list of bookmarks

```

**Domain Model**
---
![Domain Model](https://github.com/Dhara-95/bookmark-manager/blob/master/bookmark-manager/screenshots/Domain_Model.png)

**How to use the app**
---
In command line clone this repo and run bundle:

```
git clone https://github.com/Dhara-95/bookmark-manager
bundle
```

To run the BookManager App run the server in command line first:

```
rackup -p 9292
```

Then go to web browser and type in the url:

```
localhost:9292            (to view the homepage)
localhost:9292/bookmarks  (to view the list of bookmarks)
```

To use psql:

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the psql command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
5. Do the same for a new test database called bookmark_manager_test with a another separate bookmarks table
