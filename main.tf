terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.24.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "teamavail_app" {
  name = "teamavail_app:latest"

  build {
    path = "."  
  }
}

resource "docker_container" "teamavail_container" {
  name  = "teamavail_app_container"
  image = docker_image.teamavail_app.name

  ports {
    internal = 3000
    external = 8081
  }
}

