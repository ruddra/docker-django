## Deploy Django using Nginx and Postgresql

An example project from this tutorial: http://ruddra.com/2016/08/14/docker-django-nginx-postgres/

First run `make clone` to clone your project. See updates section for cloning repo.

To use this project, run this commands:

1. `make up` to build the project and starting containers.
2. `make build` to build the project.
3. `make start` to start containers if project has been up already.
4. `make stop` to stop containers.
5. `make shell-web` to shell access web container.
6. `make shell-db` to shell access db container.
7. `make shell-nginx` to shell access nginx container.
8. `make log-web` to log access web container.
9. `make log-db` to log access db container.
10. `make log-nginx` to log access nginx container.


### Updates:
1. Update `app.conf` with your git repository you want to use.
2. change in docker-compose.yml. Put your project name in the web container's command.  
