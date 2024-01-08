# Use a Ruby base image with your desired Ruby version (e.g., ruby:2.7)
FROM ruby:2.7

# Set the working directory within the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to the working directory
COPY Gemfile Gemfile.lock ./

# Install Ruby dependencies
RUN bundle install

# Copy the rest of your Ruby application code to the working directory
COPY . .

# Expose a port that your application may use (you can change this to match your application)
EXPOSE 4567

# Define the command to run your Ruby application
CMD ["ruby", "app.rb"]
