terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Ozmium"
    workspaces {
      name = "aws-infra"
    }
  }
}
