# Base image
FROM ruby:3.0.7

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code
COPY . .

# Precompile assets (if needed; adjust as necessary)
# RUN bundle exec rake assets:precompile

# Expose the port the app runs on (adjust as needed)
EXPOSE 3000

# Start the application
CMD ["rails", "server", "-b", "0.0.0.0"]
