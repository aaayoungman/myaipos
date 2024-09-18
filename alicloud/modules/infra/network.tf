resource "alicloud_vpc" "main" {
  cidr_block = "172.16.0.0/12"
}

resource "alicloud_vswitch" "main" {
  vpc_id            = alicloud_vpc.main.id
  cidr_block        = "172.16.0.0/16"
  zone_id           = var.zone_id  # 根据你的需求选择可用区
}