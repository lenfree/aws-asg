sample-playbook
===============

This is a simple playbook which build and ship AMI,
configure ELB and ASG

Getting started:
---------------

ansible v >= 2.1.1.0

For installation, please refer to http://docs.ansible.com/ansible/intro_installation.html

1. Generate ssh key pair and make sure it exists in AWS.
2. Update ```keypair``` to match the ssh key you created in
group_vars/all.yml

Usage:
------

Configure ssh client:

```
cat >>~/.ssh/config<<EOF
Host *
  IdentityFile ~/.ssh/<ssh-keyname>
  User ec2-user
  ServerAliveInterval 60
  forwardagent yes
  GSSAPIAuthentication no
EOF
```

Build and ship:

```
$ ansible-playbook -i inventory/ec2.py build_deploy.yml
```
