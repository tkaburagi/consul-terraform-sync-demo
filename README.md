## demo for consul-terraform-sync

<kbd>
  <img src="https://github.com/tkaburagi/consul-terraform-sync-demo/raw/master/pic.png">
</kbd>

## setup

* intall [ct-sync](https://releases.hashicorp.com/consul-terraform-sync/)

```shell script
terraform init
terraform plan
terraform apply
```

* Copy `CONSUL ADDR`, `BIG IP ADDR` and `BIG IP PASSWORD` from output
* replace them in config.hcl.template

```shell script
mv config.hcl.template config.hcl
consul-terraform-sync -config-file config.hcl
```

## demo

## refer

* https://registry.terraform.io/modules/f5devcentral/app-consul-sync-nia/bigip/latest
* https://registry.terraform.io/providers/F5Networks/bigip/latest/docs/resources/bigip_as3
* https://www.consul.io/docs/nia