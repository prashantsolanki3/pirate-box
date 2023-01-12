[all:vars]
ansible_connection=ssh
ansible_user=${user}

[dev] 
${dev} ansible_ssh_extra_args='-o StrictHostKeyChecking=no'