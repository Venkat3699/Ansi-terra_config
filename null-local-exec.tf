resource "null_resource" "wait_for_ansible" { 
  depends_on = [local_file.ansible-inventory-file]

  provisioner "local-exec" {
    command = <<EOH
      sleep 20
      ansible -i invfile pvt -m ping -vvv --extra-vars "ansible_python_interpreter=/usr/bin/python3" --ssh-extra-args="-o ControlMaster=no -o ServerAliveInterval=30 -o ServerAliveCountMax=5"
    EOH
  }

  triggers = {
    inventory_checksum = local_file.ansible-inventory-file.content_md5
  }
}
