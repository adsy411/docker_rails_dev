# Docker-based dev environment

Here's an experiment. Can we do rails dev in containers?

This sets up two containers. The "shell", which contains:

* Rails
* Node.js (v4.8.2)
* Vim and Vundle with some plugins
* A `.bash_profile`

And a Postgres container.

This uses `docker-compose` to spin up the containers. You'll then connect to the `shell` container to run commands.

It maps the `dev` folder in your home dir into the container as the  `/apps` directory.  


## Usage

Clone this.

```
git clone https://github.com/napcs/docker_rails_dev
```

Modify the contents of the `dotfiles` directory.

Review the `Dockerfile` and ensure those packages are what you want. If you add more dotfiles, be sure to add them.

Then review the `docker-compose.yml` file and ensure the volumes work for you, and that the right ports are exposed.

Now, build and start things

```
docker-compose build
docker-compose up -d
```

Then launch a login shell

```
docker exec -it docker_rails_dev_shell_1 bin/bash -l
```

### Using Vim?

Once logged in to the container, install Vundle:

```
vim +PluginInstall +qall
```

