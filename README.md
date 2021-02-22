# The Home Appointments

>This the the backend (API) part for the capstone project of [Microverse](https://www.microverse.org/) main technical curriculum.  
>This project is an appointment making app where users are able to see a list of different types of houses and book an appointment for a personal visit to a particular house.
>Users can see the details of a particular house by clicking the 'See details' button.
<div align="center">

[![View Code](https://img.shields.io/badge/View%20-Code-green)](https://github.com/praz99/appointments-backend)
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/praz99/appointments-backend/issues)
[![GitHub Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/praz99/appointments-backend/pulls)

</div>

## 📝 Contents

<p align="center">
<a href="#features">Main Features</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#frontend">Frontend</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#with">Built with</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#qs">Quick Start</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#testing">Testing</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#author">Author</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
</p>

## Main Features<a name = "features"></a>

- A proper authentication system has been implemented using JWT. Users are able to create a new account and login/logout securely.
- Users can see a list of different houses.
- Users can see the details of a particular house.
- Users can make an appointment on the date and time of their choice.
- Users can see all the appointments they have made in the Profile page.

## Frontend<a name= "frontend"></a>

The frontend part for this project can be found in [github](https://github.com/praz99/appointments-frontend) and [Heroku](https://praz-appointments.herokuapp.com/) live.

## 🔧 Built with<a name = "with"></a>
- Ruby on Rails 6.0.3
- Ruby 2.7.1

## Quick Start<a name= "qs"></a>

### Prerequisite
* Install Ruby ([installation guide](https://www.ruby-lang.org/en/documentation/installation/))
* Install Ruby on Rails ([installation guide](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails))
* Git and Github

#### Get a local copy with:<br>
```js
git clone git@github.com:praz99/appointments-backend.git
```

### Installation

After cloning the app, enter following commands in your terminal.
```js
bundle install
```
```js
yarn install --check-files
```
```js
rails db:create
```
```js
rails db:migrate
```
```js
rails db:seed
```
```js
rails server
```
Open https://localhost:3001/ in your browser

### Testing <a name= "testing"></a>

To test the project

- Navigate to the directory where the project is located.
- Open terminal in this directory.
- Start testing by using `rspec` command.


## ✒️  Authors <a name = "author"></a>

👤 **Prajwal Thapa**

- Github: [praz99](https://github.com/praz99)
- Twitter: [@thapa_praz](https://twitter.com/thapa_praz)
- LinkedIn: [prazwal-thapa](https://linkedin.com/in/prazwal-thapa)
- Email: t.prazwal@gmail.com

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/praz99/appointments-backend/issues).


## 👍 Show your support

Give a ⭐️ if you like this project!

## :clap: Acknowledgements
- [Microverse](https://www.microverse.org/)

## 📝 License

This project is [MIT](./LICENSE) licensed.
