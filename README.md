# Remember

[Remember](https://ramon-luis-remember.herokuapp.com) is a simple flashcard web application to help remember things.

Create flashcards that include a front, back, and code section. Use markdown to write formatted text.

The application was built for personal use only to help remember computer science topics, but could be adapted for many purposes.  Note that only authorized users can create, edit, and delete flashcards; anyone can browse.

<kbd>
  <img src="https://github.com/ramon-luis/remember/raw/master/demo/remember-screenshot-2.png">
</kbd>
<br />
<br />
<kbd>
  <img src="https://github.com/ramon-luis/remember/raw/master/demo/remember-screenshot-3.png">
</kbd>

## Getting Started / Installing

If you're familiar with Ruby on Rails, then fork & clone and you're good to go.
Otherwise, follow the basic steps below to get up and running.

Install gems, migrate & seed the db, start the rails server.

1. `$ rails bundle`
2. `$ rails db:migrate`
3. `$ rails db:seed`
4. `$ rails s`

Go to `localhost:3000` in a web browser to view.

IMPORTANT: the application uses basic http authentication to manage access.  It
worked for my purposes, but it's not very secure, so I'd suggest changing :)


### Prerequisites

It's a [Ruby on Rails](http://rubyonrails.org/) project.


## Built With

* [Ruby on Rails](http://rubyonrails.org/) - web framework
* [Postgres](https://www.postgresql.org/) - production database
* [Heroku](https://www.heroku.com/) - deployment


## Author

* [**Ramon-Luis**](https://github.com/ramon-luis)
