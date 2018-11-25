# os-circular-fashion-api

This is a Ruby on rails REST API for the os-circular-fashion catalogue.

## Setup

Install rails, ruby 2.3 and run migrations

Create a .env file with the GOOGLE_KEY and GOOGLE_SECRET keys matching your Google API Keys for web application. Make sure the redirect url matches `http://yoururl/auth/google/callback`

Authentication is implemented using [devise-token-auth](https://devise-token-auth.gitbook.io)

See [os-circular-fashion-nextjs](http://github.com/fibasile/os-circular-fashion-nextjs) as an example client.
