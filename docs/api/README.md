# ServiceConnect API

This directory contains documentation related to the ServiceConnect APIs.

## REST API

Base path:

/api/v1

Protected endpoints use JWT authentication:

Authorization: Bearer <access_token>

The REST API includes authentication, providers, bookings, reviews, messages, notifications, and other application features.

## GraphQL API

Endpoint:

POST /graphql

GraphQL uses JWT authentication for protected requests.

In development, GraphiQL is available at:

/graphiql

## API Testing

A Postman collection is included in the project for testing the main REST and GraphQL endpoints.

