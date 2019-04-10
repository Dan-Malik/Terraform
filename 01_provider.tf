provider "google" {
    credentials = "${file("${var.terraform_keys}")}"
    project = "${var.project}"
    region = "${var.region}"
}
