## demo for consul-terraform-sync

<kbd>
  <img src="https://github.com/tkaburagi/consul-terraform-sync-demo/blob/main/pic.png?raw=true">
</kbd>

## setup

* intall [ct-sync](https://releases.hashicorp.com/consul-terraform-sync/)

```shell script
terraform init
terraform plan
terraform apply
```

* Copy `CONSUL ADDR`, `BIG IP ADDR` and `BIG IP PASSWORD` from output
* `./replacer CONSULADDR BIGIPADDR PASSWORD`

```shell script
mv config.hcl.template config.hcl
consul-terraform-sync -config-file config.hcl
```

## demo

* After Running CTS, check the terraform will run for syncing between Consul and F5 BIG IP
* Access to `http://BIGIPADDR:8080` for confirming load balancing.
* Scale out/in AWS Autoscaling group and see the CTS log. It will sync the env automatically!!
* tfstate will be store at Consul kv.

## refer

* https://registry.terraform.io/modules/f5devcentral/app-consul-sync-nia/bigip/latest
* https://registry.terraform.io/providers/F5Networks/bigip/latest/docs/resources/bigip_as3
* https://www.consul.io/docs/nia