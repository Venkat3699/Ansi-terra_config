resource "null_resource" "wait_for_ansible" {
  depends_on = [local_file.ansible-inventory-file]
  triggers = {
    time = "${timestamp()}"
  }

  count = length(aws_instance.webservers)
  provisioner "local-exec" {
    command = <<EOH
      sleep 20
      ansible -i invfile pvt -m ping
    EOH
  }
}