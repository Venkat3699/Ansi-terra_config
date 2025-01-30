resource "null_resource" "wait_for_ansible" { 
  depends_on = [local_file.ansible_inventory_file]

  provisioner "local-exec" {
    command = <<EOH
      sleep 20
      ansible -i ${local_file.ansible_inventory_file.filename} pvt -m ping -vvv --extra-vars "ansible_python_interpreter=/usr/bin/python3" --ssh-extra-args="-o ControlMaster=no -o ServerAliveInterval=30 -o ServerAliveCountMax=5"
    EOH
  }

  triggers = {
    inventory_checksum = sha1(local_file.ansible_inventory_file.content)
  }
}