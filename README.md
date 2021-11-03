# ansible-roles

## Overview

This project is collection of ansible roll.

## How to use

### How to use Ansible Playbook

Execute below at project root.

```bash
# execute all of rolls
ansible-playbook -i hosts site_common.yml
ansible-playbook -i hosts site.yml

# execute a role
ansible-playbook -i hosts site.yml --tags [role name]
```
