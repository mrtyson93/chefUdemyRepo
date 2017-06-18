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
  owner 'root'
  group 'root'
end

user 'user1' do
  comment 'user1'
  uid '123'
  home '/home/user1'
  shell '/bin/bash'
end

group 'admins' do
  members 'user1'
  append true
end


