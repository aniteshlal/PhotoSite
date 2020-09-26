# How to Dockerize and Deploying a Ruby on Rails Application that is a Simple Photosite

## Table of Contents
1. [Intro and Purpose](#1-intro-and-purpose)
	  - [How to create and Configure EC2 instance](#create-ec2)
2. [Demonstration of Application working](#2-demonstration-of-application-working)
3. [Things that are not working](#3-things-that-are-not-working)
4. [YouTube walkthrough](#4-youtube-walkthrough)
5. [Adv - Why my stuffs disappeared after I stopped my EC2?! What shall I do?](#5-adv---why-my-stuffs-disappeared-after-i-stopped-my-ec2-what-shall-i-do)
6. [Adv - How to get access to my website despite the IP address of EC2 changes?](#6-adv---how-to-get-access-to-my-website-despite-the-ip-address-of-ec2-changes)

<br>

## 1. Intro and Purpose

This is a Ruby on Rails (RoR) application that is a very simple photo website that utilizes the Sqlite3 database. The database as has 3 tables, one for Users, Photos, and Comments. The relationship between these tables are the following:<br>
  * A User can have many photos and many Comments
  * A Photo belongs to one User and has many Comments
  * A Comment belongs to one User and one Photo<br>

There are 2 URI the website has. One is the **user/index** which lists all the users in the database. The other one is the **photo/index/:id** where id parameter is the User Id and it displays all the all Photos associated with that User Id and under each photo, it displays all the comments for that photo with the corresponding author of the comment.<br>

<a name = "create-ec2" /> <br>

**How to create and Configure EC2 instance** <br>
Here is the [link][youtube link to create and configure EC2] for my youtube video going through the setup <br>



## 2. Demonstration of Application working

## 3. Things that are not working

## 4. YouTube walkthrough

## 5. Adv - Why my stuffs disappeared after I stopped my EC2?! What shall I do?

## 6. Adv - How to get access to my website despite the IP address of EC2 changes?


[youtube link to create and configure EC2]: https://www.youtube.com
