terraform {
  backend "remote" {
    organization = "meghanasaiv"

    workspaces {
      name = "cli-acme"
    }
  }
}