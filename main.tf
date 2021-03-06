//--------------------------------------------------------------------
// Modules

module "s3_bucket" {
  #source = "github.com/jangjaelee/module-terraform-aws-s3.git"
  source  = "app.terraform.io/cine0831/s3/aws"
  version = "0.1.0"

  region = var.region
  s3-bucket = var.s3-bucket
}

module "route53" {
  #source = "github.com/jangjaelee/module-terraform-aws-route53.git"
  source  = "app.terraform.io/cine0831/route53/aws"
  version = "0.1.0"
  
  region = var.region
  vpc-tagname = var.vpc-tagname
  public_domain_name  = var.public_domain_name
  private_domain_name = var.private_domain_name
}
  
module "keypair" {
  #source = "github.com/jangjaelee/module-terraform-aws-key-pair.git"
  source  = "app.terraform.io/cine0831/keypair/aws"
  version = "0.1.0"

  keypair_name = var.keypair_name
  keypair_file = var.keypair_file
}
