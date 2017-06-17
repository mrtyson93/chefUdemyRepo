package 'vim-enhanced'
package 'emacs'
package 'nano'

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntp' 

#node['ipaddress']
#node['memory']['total']
 
template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'My name is Mitchell'
  )
  action :create
end


