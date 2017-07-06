provider "openstack" {
}

resource "openstack_compute_instance_v2" "cicd-sandbox" {
  name = "cicd-sandbox"
  image_id = "1d0e2474-8012-44f5-9e9c-c66b4e63d2f2"
  flavor_name = "s1.medium"
  key_pair = "amelie-wsl"
  security_groups = ["HTTP", "HTTPS", "SSH-ICMP"]

  network {
    uuid = "1910d716-5960-4507-b2cc-edcf73c014b7"
  }

} 
