HMPPS-BOOTSTRAP
=========

Ansible bootstrap role


Role Variables
--------------

 - `mount_point` = directory to mount our volume
 - `device_name` = the volume to mount
 - `HAS_DOCKER` = env var to install docker and docker-compose

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yaml
    ---
    
    - hosts: localhost
      roles:
         - bootstrap

```

```bash

HAS_DOCKER=False ansible-playbook bootstrap.yml -e mount_point=/srv -e device_name=/dev/sdbc
```
License
-------

MIT

