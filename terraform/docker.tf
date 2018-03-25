provider "docker" {
  host = "tcp://127.0.0.1:2375/"
}

resource "docker_container" "postgres" {
  image = "postgres:alpine"
  name  = "postgres"
  ports {
    internal = 5432
    external = 5432
  }
}
