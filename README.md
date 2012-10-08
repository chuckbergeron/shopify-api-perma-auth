# Shopify API Perma-Auth

## Description

*This gem is a work in progress!*

Sets up your [Shopify API-enabled app](https://github.com/Shopify/shopify_app) to store permanent tokens, to make requests on behalf of a store anytime.

## Installation

```sh
rake shopify-api-perma-auth:install
```

This will generate a database migration, and add the new columns from the migration to a "Shops" table.

After completing the Oauth process with a new shop, a hook on the LoginController#finalize action will store the new shop's permanent auth token in the database.
