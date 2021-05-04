module "label1" {
  source      = "../"
  namespace   = "TeSt"
  environment = "dev"
  name        = "Jimmy P"
  attributes  = ["fire", "water", "earth", "air"]
  delimiter   = "-"

  #label_order = ["name", "environment", "stage", "attributes"]

  tags = {
    "City"        = "Dublin"
    "Environment" = "Private"
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