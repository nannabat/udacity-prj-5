[![CircleCI](https://circleci.com/gh/nannabat/udacity-prj-5.svg?style=svg)](https://circleci.com/gh/nannabat/udacity-prj-5)

## Project Overview

In this project, we have operationalize a Machine Learning Microservice API. 


### Project Tasks 


* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


.cirlceci/config.yml: This yaml file is for circleCI 
Dockerfile: It is docker file that includes steps build a container
Makefile: It is a file that includes shell command or script that are needed to be executed at each stage
run_docker.sh: It a file that includes commmands to run docker. 
upload_docker.sh: This file has steps to upload docker in registry
run_kubernetes.sh: Includes steps to to setup kubernetes cluster with minikube.
app.py: Entry point for prediction application
make_prediction.sh: It is a cur scrip to test prediction application
output_txt_files: It contains log files docker and kubernetes files.
