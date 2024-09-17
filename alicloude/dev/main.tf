module "ecs" {
    source = "../modules/infra"
    access_key = var.access_key
    secret_key = var.secret_key
    region = var.region
    zone_id =var.zone_id
    password = var.password
}

module "k3s" {
    source = "../modules/k3s"
    public_ip = module.ecs.public_ip
    private_ip = module.ecs.private_ip
}

resource "local_sensitive_file" "kubeconfig" {
  content  = module.k3s.kube_config
  filename = "${path.module}/config.yaml"
}