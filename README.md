# Fitnessapp Project [LIVE LINK](https://cryptic-ridge-62981.herokuapp.com/)

- RUBY on RAILS
- Javascript
- Bootstrap
- Devise

## Usage

> Clone the repository to your local machine

```
$ git clone git@github.com:rOluochKe/fitnessapp.git
```

> cd into the directory

```
$ cd fitnessapp
```

> Then install the needed gems (while skipping any gems needed only in production):

```
$ bundle install --without production
```

> Next, migrate the database:

```
$ rails db:migrate
```

> Next, Seed the database, run:

```
$ rails db:seed
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rspec
```

> If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## Functionalities

- Create an account, logs in and logout
- Homepage with featured activities
- List single activity, time taken, next date and activity history
- Display a navigation with user account
- A user starts an activity

## Designed and developed by

[Raymond Oluoch](https://github.com/rOluochKe)

## Contributing

1. Fork it (git clone git@github.com:rOluochKe/fitnessapp/fork)
2. Create your feature branch (git checkout -b feature/[choose-a-name])
3. Commit your changes (git commit -am 'What this commit will fix/add')
4. Push to the branch (git push origin feature/[chosen name])
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE.md) file for details.