+++
title = "Kubernetes"
date = 2021-04-26T16:54:00+08:00
lastmod = 2022-07-08T15:34:12+08:00
draft = false
+++

## Online Tutorials {#online-tutorials}

<https://kubernetes.io/docs/tutorials/kubernetes-basics/>
<https://kubernetes.io/zh/docs/tutorials/kubernetes-basics/>


## CONCEPT {#concept}


### Cluster {#cluster}

When you deploy Kubernetes, you get a cluster.


### Node {#node}

A Kubernetes cluster consists of a set of worker machines, called nodes, that
run containerized applications. Every cluster has at least one worker node.


### Pod {#pod}

The worker node(s) host the Pods that are the components of the application
workload. The control plane manages the worker nodes and the Pods in the
cluster. In production environments, the control plane usually runs across
multiple computers and a cluster usually runs multiple nodes, providing
fault-tolerance and high availability.


### Master {#master}


### Controller {#controller}