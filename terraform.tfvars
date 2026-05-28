solly = {
  beans      = "eastus"
  potato     = "eastus"
  ladyfinger = "eastus"
  cabrige    = "eastus"
}

jhons = {
  store561 = {
    name                     = "mysbean007"
    resource_group_name      = "beans"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  store5342 = {
    name                     = "mypot078"
    resource_group_name      = "cabrige"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
armani = {
  contain005 = {
    name                  = "contaio06"
    storage_account_name  = "mysbean007"
    container_access_type = "blob"
  }
  contain007 = {
    name                  = "cont08"
    storage_account_name  = "mypot078"
    container_access_type = "private"
  }
}
  