# Find My Draft

**Find My Draft** is an app created to help build a community around live fantasy football drafts. The concept behind Find My Draft allows users to host live drafts or request to book a venue for themselves. This app was inspired by the difficulty of locating places that would be able to hold live drafts.
<p align="center">
<span><img src="http://i.imgur.com/YgStdPp.jpg">  <img src="http://i.imgur.com/aABh2Yt.jpg"></span>
</p>

## Link to Heroku
<a href="https://findmydraft.herokuapp.com/">Find My Draft</a>

## ERD, Wireframes, and User Stories

### ERD:
<p align="center">
<img src="http://i.imgur.com/3sVGHxR.png">
</p>

### Wireframes/User Stories:
<p align="center">
<img src="http://i.imgur.com/w4UDJF3.png" height="200px" width="200px">
<img src="http://i.imgur.com/8YKyjdw.png" height="200px" width="200px">
<img src="http://i.imgur.com/UvK0LMn.png" height="200px" width="200px">
<img src="http://i.imgur.com/b9CLOA9.png" height="200px" width="200px">
<img src="http://i.imgur.com/bkDHZr7.png" height="200px" width="200px">
<img src="http://i.imgur.com/2UHIAMp.png" height="200px" width="200px">
<img src="http://i.imgur.com/Q7JCVR5.png" height="200px" width="200px">
</p>

## Technologies Used:
* Ruby on Rails 5
* PostgreSQL
* MaterializeCSS <ul><li>```gem 'materialize-sass'```</li><li>```/app/assets/javascript/application.js => //= require materialize-sprockets```</li><li> ```/app/assets/javascript/application.js => //= require materialize/extras/nouislider```</li></ul>
* Sass
* JavaScript
* jQuery <ul><li>```gem 'jquery-rails'```</li><li>```gem 'jquery-turbolinks'```</li></ul>

### Ruby Gems Used:
* Devise <ul><li>```gem 'devise'```</li></ul>
* Masonry <ul><li>```gem 'masonry-rails'```</li><li>```/app/assets/javascript/application.js => //= require masonry/jquery.masonry```</li><li>```/app/assets/stylesheets/application.scss => *= require 'masonry/transitions'
```</ul>
* Uploadcare <ul><li>```gem 'uploadcare-rails', "~> 1.0"```</li></ul>
* Ransack <ul><li>```gem 'ransack'```</li></ul>
* Geocoder <ul><li>```gem 'geocoder'```</li></ul>
* Google Maps for Rails <ul><li>```gem 'gmaps4rails'```</li><li> ```/app/assets/javascript/application.js => //= require gmaps/google```</li></ul>
* Underscore <ul><li>```gem 'underscore-rails'```</li><li> ```/app/assets/javascript/application.js => //= require underscore```</li></ul>

## Future Development:
* Reset password
* Password recovery
* Manage unavailable dates
* Text message booking verification
* Email booking verification
* Venue food/drink package deals
* Provided draft kits
* Integration of Fantasy Football Websites (yahoo.com, espn.com, cbs.com, & nfl.com)
