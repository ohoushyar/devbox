execute "apt-get-update" do
  command "apt-get update"
  ignore_failure true
end

# for development
package 'vim'
package 'git'
package 'screen'
package 'perl-doc'
package 'ack-grep'
package 'htop'

package 'libssl-dev'



