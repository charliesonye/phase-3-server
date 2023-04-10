## P3-Server

## Contents

* [Project Description](#project-Description)
* [Features](#features)
* [Technologies](#technologies)
* [Setup](#setup)
* [Link to client-side of this application](https://github.com/charliesonye/phase-3-client)


## Project Description

This project serves as a database for a company to track data about technicians and their clients from the server.

## Features
* Full CRUD capability for data in technicians table
* Able to read and create data from customers table


## Technologies
The technologies used within this app:
* Ruby Gems: Sinatra, Active Record, SQLite3, Rake, Thin

## Setup
To run locally:
```
$ cd phase-3-server 
$ bundle install
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec rake server

```
