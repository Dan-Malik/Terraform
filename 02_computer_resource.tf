resource "google_compute_instance" "jenkins" {
	name = "${var.name}"
	machine_type = "${var.machine_type}"
	zone = "${var.zone}"
	tags = ["${var.name}"]
	boot_disk {
		initialize_params {
			image = "${var.image}"
		}
	}
	network_interface {
		network = "${var.network}"
		access_config {
			// Ephemeral IP
		}
	}
	metadata {
	sshkeys = "${var.ssh_user}:${file("${var.public_key}")}"
	}
	connection = {
		type = "ssh"
		user = "${var.ssh_user}"
		private_key = "${file("${var.private_key}")}"
	}
	provisioner "file" {
		source = "${var.script}"
		destination = "${var.script_destination}"
	}
	provisioner "remote-exec" {
		inline = [
			"sudo apt-get update",
			"chmod +x ~/myscript.sh",
			"sudo sh ~/myscript.sh",
		]
	}
}

resource "google_compute_firewall" "www" {
  name = "tf-www-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports = ["8080", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}
