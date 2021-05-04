# terraform-all-label
Consistent naming for Terraform resources

This module generates names using the following convention by default: {namespace}-{name}-{attributes}-{environment}. 
However, it is highly configurable. The delimiter (e.g. -) is configurable. Each label item is optional (although you must provide at least one). 

Use it like this:
```hcl
module "label1" {
  source      = "../"
  namespace   = "TeSt"
  environment = "dev"
  name        = "Jimmy P"
  attributes  = ["apple", "pear", "banana"]

  tags = {
    "ManagedBy"   = "Terraform"
    "Environment" = "dev"
  }
}

output "label1" {
  value = {
    id         = module.label1.id
    name       = module.label1.name
    namespace  = module.label1.namespace
    attributes = module.label1.attributes
    delimiter  = module.label1.delimiter
  }
}
```