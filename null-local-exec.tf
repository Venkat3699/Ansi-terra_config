resource "null_resource" "wait_for_ansible" { 
  depends_on = [local_file.ansible-inventory-file]
  provisioner "local-exec" {
    command = <<EOH
      sleep 20
      ansible -i invfile pvt -m ping
    EOH
  }
}