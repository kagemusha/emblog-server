Emblog Server
-------

A blogging-engine API server to be used with [Emblog](https://github.com/kagemusha/emblog), a blogging client written in [Ember](http://emberjs.com/) using [Ember-cli](http://iamstef.net/ember-cli/).  It is meant for demo purposes, so has some rough edges and is not recommended as-is for production use.


Development
--------

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

It uses [Devise](https://github.com/plataformatec/devise) and [Doorkeeper](https://github.com/doorkeeper-gem/doorkeeper) for token authentication, and [Pundit](https://github.com/elabs/pundit) and [Rolify](https://github.com/EppO/rolify) for authorization.

Installation
---------

    1. Clone the project
    2. `cd emblog-server` #or whatever dir you clone the project to
    3. run `bundle install`
    4. run `bundle exec rake db:create`
    5. run `bundle exec rake db:migrate`
    6. If you want a default user and post, `bundle exec rake db:seed`
    
License
-------

[MIT License](http://opensource.org/licenses/MIT).extend
 year: whatever year it is
 copyright holders: "Michael Madrid and emblog-server project contributors"

    
    
