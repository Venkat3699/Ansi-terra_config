resource "aws_key_pair" "ansible" {
  key_name   = "terraform-ansible-integration"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDP5r+p3RJX/OhgzGmiOveCc1OTREDCSQod+boeDYSW1RyzUnToI80GR9L9pvqx+IZVF8gFouoAAGTUTHj+FhGn2gS+3EIN/wy2EXoKvG7go9sz28cyle39jyM9dSKgldqWGOLA+UJvXViTlwvMZFdKf7CHJRuFif+XqygB0ctfFWK7WSHJKA0RHegBwMKT3dhAd7cUGDJa0ikv+e+opYjuYOOGYvMIJ8PQ+qI62TS+zJFBQo2Mmh8W0cuD8HaF2mgXhZg55GoBSBu5nJZsXlg6hJsPtuggQmkiR7t3ju9g4KaWiRM1b0/hiN+iYjvzdArlUBw9xP+AtUqSyGbGzMCe0WCaTT6xdfdj7DAjRvfirPixLciOj3+vXVU8yBiX3b/C1zcyWR1zmMgEUXcMUXTIGNiMltnR3k2UQ/KBmONtUN1kdp0R/rMO+UeIFD5n1UtPmnYtGs6dxxmeYuXVO1f577iZHWnSAMrw8CjjQ4ZJ1IR1qP9iSuBsphjcVJRA+S0IHGC+EWAzESfPFfHndXnXFKEBDnmfRDCQdPfQovbEF0hrLc18SY882CSiAN7+F1c6Szrw85QwhBWT12L+akbt/JI47aaiEuH2aqfnzWTuALlq7XdkuCAQGjBE2aaBYMaLbur0mAKlu7b40HV1A4BuCgJVFmjjL3h8bxoRycyZyw== Admin@MVBrothers"
}