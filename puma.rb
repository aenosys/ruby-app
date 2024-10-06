# config/puma.rb

port ENV.fetch("PORT") { 8080 }  # Set Puma to listen on port 8080 (adjust for your platform)
environment ENV.fetch("RACK_ENV") { "development" }  # Set the environment to development by default
