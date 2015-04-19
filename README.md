# SoundSplash

Soundsplash is a simple music sharing app, where users can upload their tracks, listen to others’ music, leave comments and follow other users.

This was my first ever web app, completed after the first 4 weeks of General Assembly's [Web Development Immersive](https://generalassemb.ly/education/web-development-immersive) course.

It was an opportunity to better learn and demonstrate my understanding of the MVC pattern, CRUD, authentication and authorisation, use of Ruby gems, version control with Git and Github, using a relational database (PostgreSQL), model associations and project planning (Trello, wireframes, sitemaps, model diagrams).

## Built with
* Ruby v2.1.4
* Rails v4.2.0
* PostgreSQL

## Setup
To run this app locally, make sure you have PostgreSQL up and running, then follow these steps in your terminal:

```
$ git clone git@github.com:mathewhawley/soundsplash.git
$ rake db:create
$ rake db:migrate
$ rake db:seed
$ bundle install
$ rails s
```
This project uses the built-in WEBrick 1.3.1 server, which defaults to port 3000. Open your browser and navigate to **localhost:3000**.

## Demo
You can visit the live site [here](http://soundsplash.herokuapp.com) — _best viewed in Chrome_.
