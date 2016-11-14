## Deploy Django using Nginx and Postgresql

An example project from this tutorial: http://ruddra.com/2016/08/14/docker-django-nginx-postgres/. It also contains implementation from this blog too: http://ruddra.com/2016/11/02/serve-static-files-by-nginx-from-django-using-docker/

To use this project, run this commands:

1. `make up` to build the project and starting containers.
2. `make build` to build the project.
3. `make start` to start containers if project has been up already.
4. `make stop` to stop containers.
5. `make shell-web` to shell access web container.
6. `make shell-db` to shell access db container.
7. `make shell-nginx` to shell access nginx container.
8. `make logs-web` to log access web container.
9. `make logs-db` to log access db container.
10. `make logs-nginx` to log access nginx container.
11. `make collectstatic` to put static files in static directory.

##Relevent Blogs:
1. <a href="http://ruddra.com/2016/08/14/docker-django-nginx-postgres/">Deploy Django, Gunicorn, NGINX, Postgresql using Docker</a>
2. <a href="http://ruddra.com/2016/11/02/serve-static-files-by-nginx-from-django-using-docker/">Serve Static Files by Nginx from Django using Docker</a>
3. <a href="http://ruddra.com/2016/11/14/docker-do-stuff-using-celery-using-redis-as-broker/">Docker: Use Celery in Django(Redis as Broker)</a>
 