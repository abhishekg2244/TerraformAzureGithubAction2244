module "rg" {
    source = "../../Modules/azurerm_rg"
    name = var.name
    location = var.location
    tags = var.tags

   
      
}


module "sa" {
    depends_on = [ module.rg ]
    source = "../../Modules/azurerm_storageacount"
    sa = var.sadetails


  
}