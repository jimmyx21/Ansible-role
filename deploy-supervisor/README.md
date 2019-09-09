# deploy-supervidor
通过supervidor来管理java的项目

```
- hosts: "{{ host_node }}"
  remote_user: root
  gather_facts: no
  vars:
    deploy_rollback: "{{ rollback }}"
    job_name: ziztour-service-admin-demo
    deploy_file: ziztour-service-admin.jar
    deploy_service_port: 18200
    deploy_service_name: ziztour-service-admin
    deploy_supervisor_file: /etc/supervisor.conf/ziztour-service-admin.conf
    deploy_verify_uri: "/"
  roles:
  - deploy-supervisor
```
