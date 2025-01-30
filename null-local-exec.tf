resource "null_resource" "webservers" {
  provisioner "local-exec" {
    command = <<EOH
      sleep 20
      ansible -i invfile pvt -m ping -vvv -o ControlMaster=no
    EOH
  }
  depends_on = [local_file.ansible-inventory-file]
}
