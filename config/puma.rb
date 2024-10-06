# config/puma.rb

port ENV.fetch("PORT") { 8080 }  # Set Puma to listen on port 8080
environment ENV.fetch("RACK_ENV") { "development" }
