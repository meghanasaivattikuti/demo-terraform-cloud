terraform {
  backend "remote" {
    organization = "meghanasaiv"
    workspaces {
      name = "acme-demo-workspace"
    }
  }
}
