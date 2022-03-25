##############################
# 共通
##############################
# プロバイダの設定
provider "azurerm" {
  features {}
  subscription_id = "${var.VAR_subscription_id}"
  tenant_id       = "${var.VAR_tenant_id}"
  client_id       = "${var.VAR_client_id}"
  client_secret   = "${var.VAR_client_secret}"
}

# リソースグループの作成
resource "azurerm_resource_group" "azurerg" {
  name     = "${var.VAR_RG_name}"
  location = "${var.VAR_location}"
}

# 仮想ネットワークの作成
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.VAR_VN_name}"
  address_space       = "${[var.VAR_VN_address_space]}"
  location            = "${var.VAR_location}"
  resource_group_name = "${azurerm_resource_group.azurerg.name}"
}

# サブネットの作成
## 配列の作成
locals {
  tmp_VAR_subnet_name = "${tolist([var.VAR_subnet_name1, var.VAR_subnet_name2, var.VAR_subnet_name3, var.VAR_subnet_name4, var.VAR_subnet_name5])}" 
  VAR_subnet_addlist = "${tolist([var.VAR_subnet_addlist1, var.VAR_subnet_addlist2, var.VAR_subnet_addlist3, var.VAR_subnet_addlist4, var.VAR_subnet_addlist5])}" 
}

## 配列内の空白を削除(countに指定している変数のみ)
locals {
  VAR_subnet_name = "${compact(local.tmp_VAR_subnet_name)}"
}

## サブネットの作成
resource "azurerm_subnet" "subnet" {
  count                = "${length(local.VAR_subnet_name)}"
  name                 = "${element(local.VAR_subnet_name, count.index)}"
  resource_group_name  = "${azurerm_resource_group.azurerg.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  address_prefixes     = "${[element(local.VAR_subnet_addlist, count.index)]}"
}
