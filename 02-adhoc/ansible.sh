
ansible -i amazon.inv -m ping all -u ec2-user
ansible -i ubuntu.inv -m ping all -u ubuntu

ansible -i vars.inv -m command -a "uptime" ubuntu

#! intance info
ansible localhost -m setup

ansible -i vars.inv -m apt a "name=git state=latest update_cache=yes" ubuntu
ansible -i vars.inv -m apt -a "name=git state=latest update_cache=yes" ubuntu

ansible -i vars.inv -m apt -a "name=git state=latest update_cache=yes" ubuntu
ansible -i vars.inv -m apt -a "name=git state=latest update_cache=yes" ubuntu --become
ansible -i vars.inv -m command -a "git --version" ubuntu

ansible -i vars.inv -m command -a "git --version" ubuntu
ansible -i vars.inv -m apt -a "name=git state=absent update_cache=yes" ubuntu --become
