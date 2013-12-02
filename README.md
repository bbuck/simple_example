# Simple Application

This rails app was created to demo the solution and provide an example for this
[question](http://stackoverflow.com/questions/20322942/using-foreign-key-in-routing/20323120?noredirect=1)
on StackOverflow.

# To Use

```
git clone git@github.com:bbuck/simple_example
cd simple_example
bundle install
rake db:create
rake db:setup # OR rake db:migrate
rails s
```

# Purpose

The purpose was to demonstrate how to create nested resources, specifically those nested on the show
page of it's parent resource (for this example that would be article comments).

There is no additional security, no error checking, etc... this was designed to be a simple example
and therefore basic or production level features are not present to conserver time.

# License

It's public domain, do with what you will.
