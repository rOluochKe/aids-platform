# Aid Web Platform API

- RUBY on RAILS
- PostgreSQL
- api
- RSpec

## Usage

> Clone the repository to your local machine

```
$ git clone git@github.com:rOluochKe/aids-platform.git
```

> cd into the directory

```
$ cd aids-platform
```

> Then install the needed gems (while skipping any gems needed only in production):

```
$ bundle install
```

> Create database, run 

```
$ rails db:create
```

> Next, migrate the database:

```
$ rails db:migrate
```

> Test, run test with RSpec:

```
$ rspec
```

> Finally, you'll be ready to run the app api in a local server:

```
$ rails s -p 3001
```

## End Points
### Volunteers
```
- [GET] Getting all the records -> http://localhost:3001/volunteers 
```
```
- [GET] Getting single record -> http://localhost:3001/volunteers/1
```
```
- [POST] Create a new single record -> http://localhost:3001/volunteers
```
```
- [PUT] Update an existing single record -> http://localhost:3001/volunteers/id
```
```
- [DELETE] Delete an existing single record -> http://localhost:3001/volunteers/id
```

### Messages
```
- [GET] Displaying total orders -> http://localhost:3001/conversations/{id}/messages
```

## Designed and developed by

[Raymond Oluoch](https://github.com/rOluochKe)

## Contributing

1. Fork it (git clone git@github.com:rOluochKe/aids-platform.git/fork)
2. Create your feature branch (git checkout -b feature/[choose-a-name])
3. Commit your changes (git commit -am 'What this commit will fix/add')
4. Push to the branch (git push origin feature/[chosen name])
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE.md) file for details.