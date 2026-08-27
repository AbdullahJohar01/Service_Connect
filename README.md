# ServiceConnect

ServiceConnect is a home services booking platform built with Ruby on Rails. It allows customers to find service providers, create bookings, and manage services.

## Features

* User registration and JWT authentication
* Customer, Provider, and Admin roles
* Provider profiles and services
* Service categories and availability
* Provider search and filtering
* Booking management and status updates
* Reviews and ratings
* Messages and notifications
* Provider and Admin dashboards

## Technologies

* Ruby on Rails
* PostgreSQL
* GraphQL
* REST API
* JWT
* Active Storage
* Active Job
* Turbo and Stimulus

## APIs

### REST API

Base path:

/api/v1

Includes authentication, providers, bookings, reviews, messages, notifications, addresses, availability, and service categories.

### GraphQL

Endpoint:

/graphql

GraphQL supports queries and mutations for users, providers, bookings, reviews, messages, notifications, and other application data.

## User Roles

Customer — Find providers, create bookings, send messages, and leave reviews.

Provider — Manage profile, services, availability, and bookings.

Admin — Manage users, providers, service categories, and application activity.

## Booking Flow

Pending → Accepted → Confirmed → In Progress → Completed

Bookings can also be rejected or cancelled when allowed.

## Project Purpose

This project demonstrates full-stack development with Ruby on Rails, including a web application, REST API, GraphQL API, authentication, database management, and booking functionality.

