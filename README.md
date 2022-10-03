# README

This API is used to get posts from social media. It does by requesting each social media every 3 minutes.
It keeps a cache so the posts can be retrieved even when the API from the social media is down.

# Dependencies

- Ruby 3.1.2
- Rails 7
- Redis
- Postgres

# Running the app

* Clone this repository in your local machine
* Run `bundle install` in the folder. (Install the ruby version set in `.ruby-version` if needed)
* Run `rake db:create` and `rake db:migrate` to set the database (Adjust `config/database.yml` if needed)
* Start sidekiq with `sidekiq` (Sidekiq will make requests to the endpoints each 3 minutes)
* Open another terminal tab and start rails server with `rails s`

# Running Specs

Specs are located in the `spec` folder, in this project we're using `rspec` to run it just execute: `rspec .` in the root folder.