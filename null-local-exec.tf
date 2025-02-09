resource "null_resource" "wait_for_ansible" {
  depends_on = [aws_instance.webservers]
  triggers = {
    time = "${timestamp()}"
  }

  count = length(aws_instance.webservers)
  provisioner "local-exec" {
    command = "echo ${element(aws_instance.webservers[*].public_ip, count.index)} >> /etc/ansible/hosts"
    when    = create
  }

  provisioner "local-exec" {
    command = "rm -f /etc/ansible/hosts"
    when    = destroy
  }
}