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

Example user and group meta-data
--------------------------------
```yaml

- users:
      ## create joe foo with group membership and a ssh-key in a remote location
    - name: joe
      state: present
      groups: admin, wheel, joe
      key: http://my.pub.key.location
      shell: /bin/sh
      ## Create user jenny using defaults and no key
    - name: jenny
      state: present
      ## Remove user test
    - name: test
      state: absent
      
- groups:
      ## create wheel group
    - name: wheel
      state: present
      ## remove admin group
    - name: admin
      state: absent
```

