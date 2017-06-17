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
  action :create
end


