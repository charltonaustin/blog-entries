## The problem
There are some pretty good tutorials such as this [guy](https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/) for how to setup various types of Kubernetes apps.
Unfortunately there are none that specifically show MySql and Flask and that I liked.
This blog entry is an attempt to help people walk through creating their own Flask.
The basic set up for this is going to be a Nginx that routes to a Flask api that connects to a MySql database.

## Kubernetes
Kubernetes is a big project.
There are lots of things to learn.
The [documentation](https://kubernetes.io/docs/home/) can be a bit much, but it is very through.
I would suggest reading it as you need to understand things for hands on projects.

## Practically where do I get started?
The first thing you should do is containerize your app.
While there are multiple different runtime environments that you can use on kubernetes as noted [here](https://kubernetes.io/blog/2017/11/containerd-container-runtime-options-kubernetes) docker is the most common.
Here's an example of a flask app docker file.
```
FROM python:3.6

# make a directory for the app
RUN mkdir /app

# set that directory as the working directory
WORKDIR /app

# copy directory contents of /app
ADD ./app .

# install requirements
RUN pip install -r requirements.txt

CMD ["gunicorn", "-c", "config/server_config.py", "app:APP"]
```
And a config file like this
```python
import multiprocessing

bind = '0.0.0.0:4000'
workers = multiprocessing.cpu_count() * 2 + 1
```
You can run it with a command like this.
```
docker build . -t app -f ./path/to/Dockerfile
docker run -d -p 4000:4000 app
```