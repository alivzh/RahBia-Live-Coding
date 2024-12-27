## Reqs

```bash
pip3 install proxmoxer
pip3 install requests
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
