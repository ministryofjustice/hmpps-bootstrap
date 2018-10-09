HMPPS-BOOTSTRAP
=========

Ansible bootstrap role


Role Variables
--------------

 - `mount_point` = directory to mount our volume
 - `device_name` = the volume to mount
 - `cldwatch_log_group` = string, if exists will configure cloudwatch
 - `HAS_DOCKER` = env var to install docker and docker-compose
 - `CONFIGURE_SWAP` = env var to enable swapfile config
 - `max_swapfile_size` = size of swapfile in kb optional, defaults to 2GB
 - `swapfile` =  path to mount our swapfile, optional default `/swap`
 - `enable_sudoers` = if we want to allow passwordless sudo, defaults to true
 - `sudoer_groups` = list of groups to enable defaults to webops
 - `remote_user_filename` = filename in which we store our users, groups and public keys for ssh access

Example Playbook
----------------

Mount point example
```yaml
mount_point: # path we're mouting to
device_name: # block device name
file_system_type: # defaults to xfs
```

Multiple Mount point example
```yaml
mount_points:
  - mount_point: # path we're mouting to
    device_name: # block device name
    file_system_type: # defaults to xfs
  - mount_point: # path we're mouting to
    device_name: # block device name
    file_system_type: # defaults to xfs
```
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

