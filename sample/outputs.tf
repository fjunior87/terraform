output "example" {
  value = "abc"
}

output "example2" {
  value = "def"
}

output "example_list" {
  value = "${var.example_list}"
}

output "example_map" {
  value = "${var.example_map}"
}

output "example_any" {
  value = "${var.example_any}"
}
