default['dotfiles']['repository_url'] = node['dotfiles_git_repository_url']

default['dotfiles']['home'] = "/home/vagrant"
default['dotfiles']['checkout_path'] = "#{ node['dotfiles']['home'] }/dotfiles"
default['dotfiles']['user'] = 'vagrant'
default['dotfiles']['group'] = 'vagrant'
default['dotfiles']['branch'] = 'master'

default['dotfiles']['test_file'] = "test -d #{ node['dotfiles']['checkout_path'] }/.bashrc"

default['dotfiles']['files'] = [
    '.bashrc',
    '.profile',
]


