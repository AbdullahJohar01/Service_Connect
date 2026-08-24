# ServiceConnect API Documentation

ServiceConnect exposes a versioned REST API and a GraphQL API.

## REST API

Base path:

`/api/v1`

Authentication:

`Authorization: Bearer <access_token>`

The REST API provides authentication, providers, bookings, reviews, messaging,
notifications, availability, provider services, service categories, addresses,
customer profiles, provider profiles, profile images, and document uploads.

## GraphQL API

Endpoint:

`POST /graphql`

Development GraphiQL interface:

`/graphiql`

GraphQL uses the same JWT authentication mechanism as the REST API.

## API Tests

REST API tests:

`test/controllers/api/v1/`

GraphQL controller tests:

`test/controllers/graphql_controller_test.rb`

The API documentation in this directory is maintained against the implemented
Rails routes.
