![](https://img.shields.io/badge/Microverse-blueviolet)

# Book Store API

> This project is about creating API end point using Ruby on Rails and deploying the API on heroku. The API has categories and books endpoints. The API is used in my front end React project which is based on an app to create a book store.

## The learning objective of this project are

- Create rails API that returns json data
- Connect react front-end app to rails back-end API
- Use API end-points to get json data
- Fetch data from the API

## Deployment

- Click [here](https://lunar-hotel-backend.herokuapp.com/) to view the deployment of the book store API.

## Built With

- Ruby on Rails
- Rswag
- rspec
- factory_bot_rails
- shoulda matcher
- Faker
- database cleaner

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html)
- [Test-driven-development-of-restful-json-api-with-rails](https://www.microverse.org/blog/test-driven-development-of-restful-json-api-with-rails)
- [Rswag](https://github.com/rswag/rswag)

### Setup

- git clone `git@github.com:julie-ify/Book-API.git`

- `cd Book-API`

### Running The App

- Run `bundle install` to install all the necessary gems
- Run `rake db:create` and `rake db:migrate` then run `rails s`
- Go to the browser and type `localhost:3000/api/v1/categories` and `localhost:3000/api/v1/books` to see the API endpoints

### Test

- Run `bundle exec rspec spec` or `bundle exec rspec ` to run all the test cases, and

- Run `bundle exec rspec spec/name_of_folder/name_of_test_file.rb` to run test cases individually.

### API Documentation

```js
Book
  is expected to belong to category required: true
  is expected to validate that :title cannot be empty/falsy
  is expected to validate that :author cannot be empty/falsy
  is expected to validate that the length of :title is at least 3

Category
  is expected to have many books
  is expected to validate that :name cannot be empty/falsy
  is expected to validate that the length of :name is at least 3

Books
  GET /books
    returns books
    returns status code 200
  GET /books/:id
    when book exists
      returns status code 200
      returns the book item
    when book does not exist
      returns status code 404
      returns a not found message
  POST /books
    when request attributes are valid
      returns status code 201
    when request attributes are invalid
      returns status code 422
      returns a failure message
  PUT /books/:id
    when book exists
      returns status code 204
      updates the book
    when book does not exist
      returns status code 404
      returns a not found message
  DELETE /books/:id
    returns status code 204

Categories
  GET /categories
    returns status code 200
    returns category
  POST /category
    when the request is valid
      creates a category
      returns status code 200
    when the request is invalid
      returns status code 422
      returns a validation failure message
  DELETE /categories/:id
    returns status code 204

Finished in 6.87 seconds (files took 12 seconds to load)
28 examples, 0 failures
```

## Author

👤 **Juliana Ifionu**

- GitHub: [Juliana Ifionu](https://github.com/julie-ify)
- LinkedIn: [Juliana Ifionu](https://www.linkedin.com/in/e-ifionu/)
- Twitter: [Juliana Ifionu](https://twitter.com/juliana_ifionu)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](hhttps://github.com/julie-ify/Book-API/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hats off to [Uduak Essien](https://www.microverse.org/blog-authors/uduak-essien) whose tutorial I followed to learn TDD in rails API
