include_recipe "perlbrew"

perlbrew_perl '5.16.2' do
  version 'perl-5.16.2'
  action :install
end

perlbrew_lib 'perl-5.16.2@mylib' do
  action :create
end

