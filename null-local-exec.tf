resource "null_resource" "webservers" {
  depends_on = [local_file.ansible-inventory-file]
  provisioner "local-exec" {
    command = <<EOH
      sleep 20
      ansible -i invfile pvt -m ping -vvv --ssh-extra-args="-o ControlMaster=no"
    EOH
  }
}