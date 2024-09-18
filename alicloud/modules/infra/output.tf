output "public_ip" {
  description = "vm public ip address"
  value = alicloud_instance.web.public_ip
}

output "private_ip" {
  description = "vm private ip address"
  value = alicloud_instance.web.private_ip
}
