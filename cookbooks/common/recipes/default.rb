execute "apt-get-update" do
  command "apt-get update"
  ignore_failure true
end

include_recipe "perl"
include_recipe "perlbrew"

# for development
package 'vim'
package 'git'
package 'screen'
package 'perl-doc'
package 'ack-grep'
package 'htop'

package 'libssl-dev' # used by Net::Twitter

cpan_module 'YAML'
cpan_module 'Params::Validate'
cpan_module 'DateTime'
cpan_module 'Data::Printer'
cpan_module 'DDP'

cpan_module 'Test::More'
cpan_module 'Test::Most'
cpan_module 'Test::Exception'

cpan_module 'Moose'
cpan_module 'Moo'
cpan_module 'Mo'

cpan_module 'File::Next'



