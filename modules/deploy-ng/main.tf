resource "kubernetes_deployment" "ng" {
  metadata {
    name = var.name
    namespace = var.namespace
    labels = {
      test = var.name
    }
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        test = var.name
      }
    }

    template {
      metadata {
        labels = {
          test = var.name
        }
      }

      spec {
        container {
          image = var.image
          name  = var.name
        }
      }
    }
  }
}

resource "kubernetes_service" "ng" {
  metadata {
    name = var.name
    labels = {
      test = var.name
    }
    namespace = var.namespace
  }
  spec {
    selector = {
      test = var.name
    }
    port {
      port        = var.port
      target_port = var.port
    }

    type = "ClusterIP"
  }

  }
