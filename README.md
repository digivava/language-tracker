# Language Tracker

This app tracks the amount of hours you've spent on your language-learning hobby! 

Simply log your hours, and watch your progress over time.

# How to Run

## Prerequisites

The frontend of this application is a React app, and the backend is in Ruby on Rails.

You will need to have Node.js and Ruby on Rails installed on your system. If your system is using old versions of Node or Ruby, I recommend using [nvm](https://github.com/nvm-sh/nvm) to install the latest Node, and [rbenv](https://github.com/rbenv/rbenv) to install the latest Ruby, as more recent versions of Node and Ruby are required to run this application. Then, follow these instructions to install [Rails](https://guides.rubyonrails.org/getting_started.html).

## Running locally

To start the UI, you'll need to first `cd frontend`, and then if it's your first time running the application, run `npm install` to install dependencies. Then, start the application by running `npm start`. The UI will be accessible at `http://localhost:3000`.

To start the backend API, in another terminal window `cd backend` and then run `bin/rails server`. The API will be accessible at `http://localhost:3001`.

## Database

Currently the database is just the default local SQLite database that Rails sets up on your system, but in the future there will be a more durable version of this deployed to the cloud.

For manual testing purposes, if you want to delete all the existing study log records in the database, you can `cd backend` and run `bin/rails console`. The terminal will enter an interactive Ruby session. Type `Record.destroy_all` to remove all records in the database, then `exit` to exit the Rails console.