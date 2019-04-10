variable "project" {
	default = "velvety-harbor-233514"
}

variable "terraform_keys" {
	default = "credentials.json"
}

variable "name" {
	default = "jenkins"
}

variable "machine_type" {
	default = "n1-standard-1"
}

variable "region" {
	default = "europel-west2"
}

variable "zone" {
	default = "europe-west2-c"
}

variable "image" {
	default = "ubuntu-1804-lts"
}

variable "network" {
	default = "default"
}

variable "ssh_user" {
	default = "danial_malik1992"
}

variable "public_key" {
	default = "~/.ssh/pubkey.pub"
}

variable "private_key" {
	default = "~/.ssh/privkey"
}

variable "script" {
	default = "myscript.sh"
}

variable "script_destination" {
	default = "~/myscript.sh"
}

variable "disk" {
	default = "jenkins-home"
}
