resource "alicloud_instance" "web" {
  instance_name       = "tf_web_instance"
  availability_zone   = var.zone_id
  security_groups     = [alicloud_security_group.main.id]
  instance_type       = "ecs.e-c1m1.large"  # 根据需求选择实例类型
  image_id            = "ubuntu_22_04_x64_20G_alibase_20240807.vhd"  # 根据需求选择镜像
  vswitch_id          = alicloud_vswitch.main.id
  internet_charge_type      = "PayByTraffic"
  internet_max_bandwidth_out = 5
  system_disk_category      = "cloud_essd"
  system_disk_size          = 40
  password                  = var.password

  tags = {
    Role = "web"
  }
}