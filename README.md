# How to Dockerize and Deploying a Ruby on Rails Application that is a Simple Photosite

## Table of Contents
1. [Intro and Purpose](#1-intro-and-purpose)
	  - [How to create and Configure EC2 instance](#create-ec2)
	  - [Create a Docker Image locally and push it to Docker Hub Repo](#create-docker-container)
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

<a name = "create-docker-container" /> <br>

**Create a Docker Image locally and push it to Docker Hub Repo** <br>

1. Create a **Dockerfile** with the following: <br>
	```
	FROM ruby:2.6.6

	WORKDIR /usr/src/app
	COPY Gemfile* ./
	RUN bundle install
	COPY . .

	RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
	RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
	RUN apt-get update -qq && apt-get install -y yarn
	RUN yarn install

	EXPOSE 3000
	CMD ["rails", "server", "-b", "0.0.0.0"]
	```
	You can find out more information on how to setup a Dockerfile from [here](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/).<br>

2. Now build our image by doing the following command in our terminal<br>
	```
	docker build -t aws-photesite-app .
	```
	This creates a local docker image called "aws-photesite-app"<br>

3. Launch a container from the newly built image by doing the following in the terminal<br>
	```
	docker run -p 3000:3000 aws-photesite-app
	```
	The command above will create a docker container using the "aws-photesite-app" image you created in Step #2. The "-d" flag tells docker daemon to run this container in "daemon mode". <br>
	You can go to to the [Official Docker Documentation](https://docs.docker.com/engine/reference/commandline/docker/) to find out all the commands docker allows.<br>
4. Publishing the Docker Image <br>
	We run the following in the command line<br>
	```
	docker login
	```
	This will prompt you to enter your Docker Hub username and then password so that you. <br>
	Next we push our Docker image to the registy with the following<br>
	```
	docker push aws-photesite-app
	```
	Now this image is avaiable via the internet so we will be able to pull it on our EC2 instance.<br>
	[Here](https://reflectoring.io/aws-deploy-docker-image-via-web-console/) is the tutorial that i followed to make the Dockerfile and publish it
	
## 2. Demonstration of Application working

## 3. Things that are not working

## 4. YouTube walkthrough

## 5. Adv - Why my stuffs disappeared after I stopped my EC2?! What shall I do?

## 6. Adv - How to get access to my website despite the IP address of EC2 changes?


[youtube link to create and configure EC2]: https://www.youtube.com
