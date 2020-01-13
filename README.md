# Volunteer Tracker

#### Database Basics Independent Project for [Epicodus](https://www.epicodus.com/); January 10, 2020

Updated January 17, 2020

#### By Courtney Schild

## Description

The following prompt outlines the project requirements:

> Create an application that tracks projects and the volunteers working on them. Each volunteer will belong to only one project (one project, many volunteers).

## Specs

Pre-written tests provided [here](https://github.com/epicodus-lessons/volunt33r_track3r).

<!-- This is another way to write out specs:
* Spec:
* Input:
* Output:  -->

#### User Stories

* As a non-profit employee, I want to view, add, update and delete projects.
* As a non-profit employee, I want to view and add volunteers.
* As a non-profit employee, I want to add volunteers to a project.

#### CRUD

| HTTP verb | Route | CRUD Action | Description | URL |
| ----------- | ----------- | ----------- | ----------- | ----------- |
| GET | /projects | READ | Get a list of projects. |  |
| GET | /projects/:id | READ | Get a page with details for a project. |  |
| GET | /projects/:id/update | READ | Get a page with a form for updating a project. |  |
| POST | /projects | CREATE | Add a new project to the list of projects. |  |
| PATCH | /projects/:id | UPDATE | Update a project. |  |
| PATCH | /projects/:id | DELETE | Delete a project (or projects) from the list. |  |
| GET | /projects/:id/volunteers/:volunteer_id | READ | Get a page with details for a volunteer. |  |
| POST | /projects/:id | CREATE | Add a new volunteer to a project. |  |
| PATCH | /projects/:id/volunteers/:volunteer_id | UPDATE | Update a volunteer and then route back to the project view. |  |

| Action | Method | Class or Instance method? | Description |
| ----------- | ----------- | ----------- | ----------- |
| CREATE | `.save()` | Instance method | save an instance of a project to the projects database |
| READ | `.all()` | Class method | return a list of projects from the projects database |
| READ | `.find()` | Class method | find an instance of a project from the list of projects; use to update and delete projects |
| UPDATE | `.update()` | Instance method | update an instance of a project in the projects database |
| DELETE | `.delete()` | Instance method | delete an instance of a project from the projects database |

## Setup/Installation Requirements

This application is deployed to Heroku and may be viewed by clicking the link below or edited by following the instructions below to clone or download the repository to your computer.

**Click [here](https://rocky-brushlands-84044.herokuapp.com) to open the Heroku app.**

#### Cloning

###### From GitHub
1. Click the **Clone or download** dropdown button.
2. Within the dropdown, click the **Download ZIP** button.

###### From the command-line interface (CLI)
1. To change the directory, type `cd Desktop` after the command prompt.
2. To clone the repository to your Desktop, type `git clone https://github.com/courtschmort/volunteer_tracker.git` after the command prompt. (This web URL can be located within the **Clone or download** dropdown button in GitHub.)

For more information about cloning repositories available on GitHub, click [here](https://help.github.com/en/articles/which-remote-url-should-i-use).

#### Ruby

3. Complete the following lessons at [learnhowtoprogram.com](https://www.learnhowtoprogram.com/) to install Ruby, etc.:
  * [Installing Ruby](https://www.learnhowtoprogram.com/ruby/getting-started-with-ruby/installing-ruby)
  * [Managing Ruby Versions](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/managing-ruby-versions-409a3b5b-7113-4c4e-aead-c97ce8231197)
  * [Using Ruby Gems](https://www.learnhowtoprogram.com/ruby-and-rails/basic-ruby/using-ruby-gems)
  * [Using RSpec](https://www.learnhowtoprogram.com/ruby-and-rails/bdd-with-ruby/using-rspec)
4. To bundle gems, type `bundle` after the command prompt.
5. To run the application, type `ruby app.rb` after the command prompt (**control-C** to exit).

#### Postgres

6. Complete the following lesson at [learnhowtoprogram.com](https://www.learnhowtoprogram.com/) to install Postgres:
  * [Installing Postgres](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-postgres-b34be9fd-381b-472e-bdb2-5c5c3f572b16)

#### SQL

7. To access the Postgres server, type `postgres` after the command prompt.
8. Open another terminal window or tab (**command-T** to open a new tab) and type `psql` after the command prompt.

#### Heroku

9. Complete the following lesson at [learnhowtoprogram.com](https://www.learnhowtoprogram.com/) to deploy to Heroku:
  * [Deploy to Heroku](https://www.learnhowtoprogram.com/ruby-and-rails/routing-with-ruby/deploy-to-heroku)

## Known Bugs

There are no known bugs at this time.

## Support and Contact Details

If you have any questions, please email me at courtneyschild@gmail.com.

Find me on LinkedIn and GitHub:

* [Connect with me](https://www.linkedin.com/in/courtneyschild/) on LinkedIn
* [Follow me](https://github.com/courtschmort) or [watch this repository](https://github.com/courtschmort/volunteer_tracker.git) on GitHub

<!-- ## Product Roadmap

In the future, I plan to include the following key features:
* Key feature 1
* Key feature 2
* Key feature 3 -->

## Technologies Used

* Markdown
* Ruby
* Postgres
* SQL
* Atom
* Heroku

## License

This website is licensed under the GNU General Public License v3.0 [gpl-3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

Copyright &copy; 2020 **Courtney Schild**
