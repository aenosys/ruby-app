# Use the official Ruby image as the base
FROM ruby:3.1

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install the required gems
RUN bundle install

# Copy the entire app directory to the container
COPY . .

# Expose port 4567 (default for Sinatra)
EXPOSE 4567

# Command to run the Sinatra app
CMD ["ruby", "app.rb"]
