# this repo is not ready at the moment !
### and i should explain that this is a temp repository and its gonna be merged in [alivzh/DevOps/ansible](https://github.com/alivzh/DevOps)

## Reqs

```bash
copyCodeBlock('<div>pip3 install proxmoxer</div>')
```

## To Do List
  - [x] create a role to create vm on proxmox
  - [x] create a task to configure network 
  - [x] create a task to clone from a template
  - [x] create a task to configure the specs of the vm
  - [] create a task that creates multiple vms at the same time ( maybe future ? )
  - [] create a task that changes disk - and disk lvm of the vm
----------------------------------------------------------------
  - [x] create a role that deletes vm on proxmox
  - [x] create a prompt in the task that verify the process of deleting vm
  - [x] create full tasks to delete completely every configs , disks , and anything acording to a vm
