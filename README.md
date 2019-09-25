# docker-django
Python 2.7.9, Django1.8.3
## docker run
~~~
docker run --name docker-django -d --restart=always -p 8000:8000 -v $PWD:/app:z -t amarinboonkirt/docker-django
~~~

## docker compose
### up
~~~
docker-compose up -d
~~~
### down
~~~
docker-compose down
~~~

## change docker volume (optional)
After start container, We can change app volume by Kitematic.
