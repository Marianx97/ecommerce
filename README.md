# Challenge - Ecommerce

## Install dependencies
* Clone the repository by running `git clone git@github.com:Marianx97/challenge-ecommerce.git`
* Go to the project root by running `cd challenge-ecommerce`
* Download and install Rbenv.
* Download and install Ruby-Build.
* Install the appropiate Ruby version by running `rbenv install [version]` where `version` is the one located in `.ruby-version`

## Installing Rails gems
* Install Bundler
```
gem install bundler
rbenv rehash
```
* Install basic dependencies
```
sudo apt-get install build-essential libpq-dev nodejs
```
* Install the gems included in the project.
```
bundle install
```

## Database Setup
* Install PostgreSQL DB engine.
* Create the DB (development and test)
```
rails db:create
```
* Run database migrations
```
rails db:migrate
```
* Seed the DB
```
rails db:seed
```

## Running the local server
* Go to the project root by running `cd challenge-ecommerce`
* Start the server by running `rails server` or `rails s`
* Go the browser and type the url `localhost:3000`
