terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15.0"
    }
  }
}

# Configure the AWS Provider
provider "terraform" {
  profile = "dufalt"
  region  = "eu-west-1"
}

provider "docker" {
  # host = "unix:///var/run/docker.sock"
  host = "npipe:////.//pipe//docker_engine"
}
