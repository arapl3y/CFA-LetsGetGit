<p align="center">
<img src="https://image.ibb.co/fbavrQ/aquilla.png" width="600" />
</p>

# About the Project
As students, we noticed that it is hard to accommodate both students who are excelling and struggling in class. This issue arises due to the expanding gap between students, limited manpower resources and the challenging task to pinpoint the core underlying reasons for the obstacles.

Therefore, this project aims to provide a linking bridge between the teacher, struggling students and the excelling students through various approaches.

The first approach is to create transparency of students' learning activities outside of the classroom and also to ignite healthy competition between students so that struggling students would be compelled to do more work to catch up with the excelling students.

The second approach is to emulate the teachers' mind through the transcription of resources list to tackle the issue of having limited manpower resources. This is so that students would be able to access additional resources outside of classroom materials to supplement the teachings in the classroom while adopting individualised learning pace.  

The third approach is to implement a way for teachers to monitor the progress of the students to understand the rationale behind struggling students.


# The Thinking Process
As a group, we brainstormed some of the problems and the ideas to address the issues relating to the different learning paces of students.

<p align="center">
<img src="https://image.ibb.co/jYkWFk/img01.jpg" width="425" />
</p>


We then proceeded to create a [Trello board](https://trello.com/b/OgpZiHGR/team-sneezy) to identify the core functions of our Minimum Viable Product (MVP) and also to identify the possible future functions to be added to our application.

![alt tag](https://image.ibb.co/e3sN5k/Screen_Shot_2017_04_09_at_11_33_14_PM.png)


# Design Decisions
We wanted our design to be modern, clean and easy to navigate. The layout was designed to be single page, and compact so that all features are easily accessible. The colour green was chosen as it is the most relaxing calming colour to the eye. Students are already stressed, so we wanted to calm them down.

The design is minimalistic and all essential information is displayed for the user. There is no clutter and the tabs keep information hidden until the use wants them displayed.

<img src="https://image.ibb.co/hRDwgQ/img05.jpg" width="425"/> <img src="https://image.ibb.co/f0OwgQ/img04.jpg" width="425"/>

<img src="https://image.ibb.co/mTjf85/img02.jpg" width="425"/> <img src="https://image.ibb.co/izcNMQ/img03.jpg" width="425"/>



# Functionality (Main Features)
Display of the login page.
<br>
<br>
![alt tag](https://image.ibb.co/nus8BQ/Screen_Shot_2017_04_10_at_12_12_27_am.png)
<br>
<br>
<br>
When login is successful, the user is redirected to the homepage where user could create personalised plans to be added to their homepage.
<br>
<br>
![alt tag](https://image.ibb.co/jtKoBQ/Screen_Shot_2017_04_10_at_12_12_04_am.png)
<br>
<br>
<br>
User could then refer the Checklist set by the Teachers as a reference to review out their study plans. To encourage students to complete plans made, the list of procrastinators will be displayed on the home page.
<br>
<br>
![alt tag](https://image.ibb.co/i3c8BQ/Screen_Shot_2017_04_10_at_12_11_31_am.png)
<br>
<br>
<br>
When the user completed a plan, their plan will be moved to the completed tab. This will allow the teachers to monitor the progress of each individual students to understand the study pattern of each individuals.
<br>
<br>
![alt tag](https://image.ibb.co/m8MeJ5/Screen_Shot_2017_04_10_at_12_10_35_am.png)



# Challenges
* Using Git and Github for collaborative work
* Managing the weaknesses and strengths of each team member
* Implementing ideas within the MVC structure of Rails
* Organising the database and overall before beginning the project so that we could easily add more features in the future
* Finalising ideas

# Installation

## Gems
1. [Devise](https://github.com/plataformatec/devise)
2. [Materialize-sass](https://github.com/mkhairi/materialize-sass)
3. [Omniauth-facebook](https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview)
4. [Rolify](https://github.com/RolifyCommunity/rolify)

Gems added to Gemfile
```
gem 'devise'
gem 'materialize-sass'
gem 'omniauth-facebook'
gem "rolify"
```

## Install
* Run  `bundle` to install the gems.

## Migration
* Run `rake db:migrate` to run migrations that have not been run yet.

## Seeds Generation
* Run `rake db:seed` to populate the database with seeds.rb.


# Contributors
1. [Alex](https://github.com/arapl3y)
2. [Hyun](https://github.com/Hyunkim95)
3. [Jess](https://github.com/JessTaDa)
4. [Paulina](https://github.com/paulinaika)
5. [Takahiro](https://github.com/TakahiroSuzukiqq)
