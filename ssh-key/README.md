

inventory文件描述，在里面先定义了对应主机的root密码，然后进行传输
```
[root@test-ansible ~]# cat /etc/ansible/hosts 
[ssh-host]
192.168.12.11
192.168.12.12


[ssh-host:vars]
ansible_ssh_pass="qwe123"
```


role入口文件描述
```
---
- hosts: ssh-host
  gather_facts: no
  roles:
  - ssh-key
```
