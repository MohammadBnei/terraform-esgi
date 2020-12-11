terraform {
  required_version = ">= 0.13"
}

resource "azurerm_app_service" "ase" {
  name                = var.ase_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  app_service_plan_id = var.asp_id

  site_config {
    local_mysql_enabled = var.ase_mysql
  }

  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY = var.ain_key
    APPLICATIONINSIGHTS_CONNECTION_STRING  = var.ain_conn
  }

  # Do not attach Storage by default
  app_settings {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = false

    /*
    # Settings for private Container Registires  
    DOCKER_REGISTRY_SERVER_URL      = ""
    DOCKER_REGISTRY_SERVER_USERNAME = ""
    DOCKER_REGISTRY_SERVER_PASSWORD = ""
    */
  }

  # Configure Docker Image to load on start
  site_config {
    linux_fx_version = var.docker_image
    always_on        = "true"
  }

  identity {
    type = "SystemAssigned"
  }
}