#
# Cookbook Name:: dotfiles
# Recipe:: default
#

# Clone dotfiles from given url
git node['dotfiles']['checkout_path'] do
    repository node['dotfiles']['repository_url']
    reference node['dotfiles']['branch']
    action :checkout
    user node['dotfiles']['user']
    group node['dotfiles']['group']
    not_if node['dotfiles']['test_file']
end

node['dotfiles']['files'].each { |file|
    link "#{ node['dotfiles']['home'] }/#{ file }" do
        to "#{ node['dotfiles']['checkout_path'] }/#{ file }"
        owner node['dotfiles']['user']
        group node['dotfiles']['group']
        mode '0600'
    end
}
