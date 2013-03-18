devbox
======

A devbox template using vagrant and chef.

To start:
 * Install Vagrant
 * Clone the repo
 * Run "vagrant up"

You can set your dotfiles repository location and devbox can deploy it. Set the "DOTFILE_GIT_REPO_URL" environment variable.

  export DOTFILE_GIT_REPO_URL=http://github.com/foo/bar

And run:

  vagrant provision
