# SkillBank

## Table of Contents

1. [Basic Information](#basic-information)
1. [Frameworks](#Frameworks)
1. [Front-end Technology](#front-end-technology)
1. [Installation](#installation)
1. [Rake Tasks](#rake-tasks)

## Basic Information

- Ruby on Rails 4.2.6
- Postgresql

### Features

- User sign up and log in
- All user profile are public
  - Public users can view who endorsed the skill
- Logged in users can
  - Add skill(s)
  - Endorse others skill by clicking "endorse!"
  - Remove endorsement

Visit [http://skillbanker.herokuapp.com](http://skillbanker.herokuapp.com) for production

### GIF
![](https://github.com/PeterTeng/skillbank/blob/master/sample.gif)

## Frameworks

- Bootstrap
- Font Awesome

## Front-end Technology

- Sass
- Haml
- Javascript & Coffee

## Installation

Must install `Postgresql` in your development environment.

1. Run `bundle install` (vendor/bundle & vendor/bundler ignored)
1. Run `bundle exec rake db:create` -> `bundle exec rake db:migrate`
1. Run `bundle exec rake db:seed` (Recommended)
1. Run `rails server -p 3000`
1. Visit `http://localhost:3000`

## Rake Tasks

1. `rake croutes` Pretty version of rake routes
1. `rake db:init` drop, create, migrate, seed

## Try next

- Refactor haml code by create helper method
- Asynchronous processing for endorsement (Ajax and React)
- Radar Chart for top 6 skills (Javascript)
- Write Test code


## License
The MIT License

Copyright (c) 2016 TENG DONGSHIH. tou9702 @ gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
