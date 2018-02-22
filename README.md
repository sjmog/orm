# ORM

Extracting an ORM from Bookmark Manager in simple steps.

The ORM should:

- Be includable into model classes to give them database superpowers.
- Give them methods `create`, `find`, `all`, `update`, `delete`, and `where`, where:
  - `create` creates a row using the model attributes, and returns the inserted row.
  - `find` finds a single row using the ID as the primary key.
  - `all` returns all rows in the model table.
  - `update` updates a row and returns the updated row.
  - `delete` deletes a row and returns `true`.
  - `where` finds rows by attribute and returns those rows.
  - all methods above wrap the returned row data in a Ruby model so it can be used in the Ruby application.
- Handle the following types of relations:
  - **one to one** (i.e. two models where each _belongs to_ the other)
  - **one to many** (i.e. two models where model one _has many_ of model two, each of which _belongs to_ model one)
  - **many to many** (i.e. two models where each model _has many_ of another model)
- Include the following configurable scripts:
  - `setup` should set up a database (including database, tables, and rows) from scratch.
  - `teardown` should destroy a database.
  - `reset` should truncate all tables in the database (for use in between tests).

This ORM must:

- Work in test, development, and production environments.
- Be easily includable in other projects that want to use it, even where the model structure is quite different