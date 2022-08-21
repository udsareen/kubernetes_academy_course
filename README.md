# Kubernetes basics

This repository contains the exercises used in the kubernetes course.
It has a folder for each exercise and the solution is available in a separate directory.

## Running tests locally

I can recommend microk8s to simulate a k8s cluster on your local machine. 
More info on installing it can be found here: https://microk8s.io/docs/getting-started

## Using a realworld cluster

Unfortunately microk8s cannot be installed on a docker container, so it is also not available through gitpod.
As a backup I created a kubernetes cluster in my aws account, which we can use for this session.

Usage:
- I will give info on how to connect to the cluster
- Create a namespace for yourself and make sure to create all resources in your own namespace such that you do not impact each other.

## Content

- Exercise 1: using pod spec
- Exercise 2: kubernetes commands
- Exercise 3: livecycle pods
- Exercise 4: deployments
- Exercise 5: secrets
- Exercise 6: configmaps
- Exercise 7: services
- Exercise 8: ingress
- Exercise 9: persistent volumes
- Exercise 10: stateful sets
- Exercise 11: init containers
- Exercise 12: daemonsets
- Exercise 13: rbac

