
# for development
include_recipe 'git'
include_recipe 'vim'
include_recipe 'emacs'
include_recipe 'screen'
include_recipe 'ack'
include_recipe 'htop'

# execute "apt-get-update" do
#   command "apt-get update"
#   ignore_failure true
# end

package 'perl-doc'
package 'libssl-dev'

if node['dotfiles_git_repository_url']
    include_recipe 'dotfiles'
end

