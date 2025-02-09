resource "aws_key_pair" "ansible" {
  key_name   = "terraform-ansible-integration"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK4qXA2BD498XNAUUhqFBJokysaext3vLovf8eATMz2R Admin@MVBrothers"
}