##############################
# Linux専用
##############################
# 変数の準備
## 配列の作成
locals {
  tmp_VAR_Linux_NSG_SR_name = "${tolist([var.VAR_Linux_NSG_SR_name1, var.VAR_Linux_NSG_SR_name2, var.VAR_Linux_NSG_SR_name3, var.VAR_Linux_NSG_SR_name4, var.VAR_Linux_NSG_SR_name5])}"
  VAR_Linux_NSG_SR_priority = "${tolist([var.VAR_Linux_NSG_SR_priority1, var.VAR_Linux_NSG_SR_priority2, var.VAR_Linux_NSG_SR_priority3, var.VAR_Linux_NSG_SR_priority4, var.VAR_Linux_NSG_SR_priority5])}"
  VAR_Linux_NSG_SR_direction = "${tolist([var.VAR_Linux_NSG_SR_direction1, var.VAR_Linux_NSG_SR_direction2, var.VAR_Linux_NSG_SR_direction3, var.VAR_Linux_NSG_SR_direction4, var.VAR_Linux_NSG_SR_direction5])}"
  VAR_Linux_NSG_SR_access = "${tolist([var.VAR_Linux_NSG_SR_access1, var.VAR_Linux_NSG_SR_access2, var.VAR_Linux_NSG_SR_access3, var.VAR_Linux_NSG_SR_access4, var.VAR_Linux_NSG_SR_access5])}"
  VAR_Linux_NSG_SR_protocol = "${tolist([var.VAR_Linux_NSG_SR_protocol1, var.VAR_Linux_NSG_SR_protocol2, var.VAR_Linux_NSG_SR_protocol3, var.VAR_Linux_NSG_SR_protocol4, var.VAR_Linux_NSG_SR_protocol5])}"
  VAR_Linux_NSG_SR_source_port_range = "${tolist([var.VAR_Linux_NSG_SR_source_port_range1, var.VAR_Linux_NSG_SR_source_port_range2, var.VAR_Linux_NSG_SR_source_port_range3, var.VAR_Linux_NSG_SR_source_port_range4, var.VAR_Linux_NSG_SR_source_port_range5])}"
  VAR_Linux_NSG_SR_destination_port_range = "${tolist([var.VAR_Linux_NSG_SR_destination_port_range1, var.VAR_Linux_NSG_SR_destination_port_range2, var.VAR_Linux_NSG_SR_destination_port_range3, var.VAR_Linux_NSG_SR_destination_port_range4, var.VAR_Linux_NSG_SR_destination_port_range5])}"
  VAR_Linux_NSG_SR_source_address_prefix = "${tolist([var.VAR_Linux_NSG_SR_source_address_prefix1, var.VAR_Linux_NSG_SR_source_address_prefix2, var.VAR_Linux_NSG_SR_source_address_prefix3, var.VAR_Linux_NSG_SR_source_address_prefix4, var.VAR_Linux_NSG_SR_source_address_prefix5])}"
  VAR_Linux_NSG_SR_destination_address_prefix = "${tolist([var.VAR_Linux_NSG_SR_destination_address_prefix1, var.VAR_Linux_NSG_SR_destination_address_prefix2, var.VAR_Linux_NSG_SR_destination_address_prefix3, var.VAR_Linux_NSG_SR_destination_address_prefix4, var.VAR_Linux_NSG_SR_destination_address_prefix5])}"

  tmp_VAR_LVM_name = "${tolist([var.VAR_LVM_name1, var.VAR_LVM_name2, var.VAR_LVM_name3, var.VAR_LVM_name4, var.VAR_LVM_name5])}"
  VAR_LVM_subid = "${tolist([var.VAR_LVM_subid1, var.VAR_LVM_subid2, var.VAR_LVM_subid3, var.VAR_LVM_subid4, var.VAR_LVM_subid5])}"
  VAR_LVM_size = "${tolist([var.VAR_LVM_size1, var.VAR_LVM_size2, var.VAR_LVM_size3, var.VAR_LVM_size4, var.VAR_LVM_size5])}"
  VAR_LVM_admin_username = "${tolist([var.VAR_LVM_admin_username1, var.VAR_LVM_admin_username2, var.VAR_LVM_admin_username3, var.VAR_LVM_admin_username4, var.VAR_LVM_admin_username5])}"
  VAR_LVM_ASK_username = "${tolist([var.VAR_LVM_ASK_username1, var.VAR_LVM_ASK_username2, var.VAR_LVM_ASK_username3, var.VAR_LVM_ASK_username4, var.VAR_LVM_ASK_username5])}"
  VAR_LVM_OD_caching = "${tolist([var.VAR_LVM_OD_caching1, var.VAR_LVM_OD_caching2, var.VAR_LVM_OD_caching3, var.VAR_LVM_OD_caching4, var.VAR_LVM_OD_caching5])}"
  VAR_LVM_OD_storage_account_type = "${tolist([var.VAR_LVM_OD_storage_account_type1, var.VAR_LVM_OD_storage_account_type2, var.VAR_LVM_OD_storage_account_type3, var.VAR_LVM_OD_storage_account_type4, var.VAR_LVM_OD_storage_account_type5])}"
  VAR_LVM_SIR_publisher = "${tolist([var.VAR_LVM_SIR_publisher1, var.VAR_LVM_SIR_publisher2, var.VAR_LVM_SIR_publisher3, var.VAR_LVM_SIR_publisher4, var.VAR_LVM_SIR_publisher5])}"
  VAR_LVM_SIR_offer = "${tolist([var.VAR_LVM_SIR_offer1, var.VAR_LVM_SIR_offer2, var.VAR_LVM_SIR_offer3, var.VAR_LVM_SIR_offer4, var.VAR_LVM_SIR_offer5])}"
  VAR_LVM_SIR_sku = "${tolist([var.VAR_LVM_SIR_sku1, var.VAR_LVM_SIR_sku2, var.VAR_LVM_SIR_sku3, var.VAR_LVM_SIR_sku4, var.VAR_LVM_SIR_sku5])}"
  VAR_LVM_SIR_version = "${tolist([var.VAR_LVM_SIR_version1, var.VAR_LVM_SIR_version2, var.VAR_LVM_SIR_version3, var.VAR_LVM_SIR_version4, var.VAR_LVM_SIR_version5])}"
}

## 配列内の空白を削除(countに指定している変数のみ)
locals {
  VAR_Linux_NSG_SR_name = "${compact(local.tmp_VAR_Linux_NSG_SR_name)}"
  VAR_LVM_name          = "${compact(local.tmp_VAR_LVM_name)}"
}

#  NSGの作成と通信ルールの設定
## NSG作成
resource "azurerm_network_security_group" "linuxnsg" {
  count               = "${length(local.VAR_Linux_NSG_SR_name) == 0 ? 0 : 1}"
  name                = "Linux-NSG-Group"
  location            = "${var.VAR_location}"
  resource_group_name = "${azurerm_resource_group.azurerg.name}"
}

## 通信ルールの設定
resource "azurerm_network_security_rule" "linuxnsgrule" {
  count                       = "${length(local.VAR_Linux_NSG_SR_name)}"
  name                        = "${element(local.VAR_Linux_NSG_SR_name, count.index)}"
  priority                    = "${element(local.VAR_Linux_NSG_SR_priority, count.index)}"
  direction                   = "${element(local.VAR_Linux_NSG_SR_direction, count.index)}"
  access                      = "${element(local.VAR_Linux_NSG_SR_access, count.index)}"
  protocol                    = "${element(local.VAR_Linux_NSG_SR_protocol, count.index)}"
  source_port_range           = "${element(local.VAR_Linux_NSG_SR_source_port_range, count.index)}"
  destination_port_range      = "${element(local.VAR_Linux_NSG_SR_destination_port_range, count.index)}"
  source_address_prefix       = "${element(local.VAR_Linux_NSG_SR_source_address_prefix, count.index)}"
  destination_address_prefix  = "${element(local.VAR_Linux_NSG_SR_destination_address_prefix, count.index)}"
  resource_group_name         = "${azurerm_resource_group.azurerg.name}"
  network_security_group_name = "${azurerm_network_security_group.linuxnsg.0.name}"
}

# ネットワークインターフェイスの作成
## パブリックIPの作成
resource "azurerm_public_ip" "linuxpublicip" {
  count               = "${length(local.VAR_LVM_name)}"
  name                = "${element(local.VAR_LVM_name, count.index)}-PublicIP"
  location            = "${var.VAR_location}"
  resource_group_name = "${azurerm_resource_group.azurerg.name}"
  allocation_method   = "Dynamic"
}

## NICの作成
resource "azurerm_network_interface" "linuxnic" {
  count               = "${length(local.VAR_LVM_name)}"
  name                = "${element(local.VAR_LVM_name, count.index)}-NIC"
  location            = "${var.VAR_location}"
  resource_group_name = "${azurerm_resource_group.azurerg.name}"

  ip_configuration {
    name                          = "${element(local.VAR_LVM_name, count.index)}-config"
    subnet_id                     = "${element(azurerm_subnet.subnet.*.id, local.VAR_LVM_subid[count.index]-1)}"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "${element(azurerm_public_ip.linuxpublicip.*.id, count.index)}"
  }
}

## NSGとNICの紐付け
resource "azurerm_network_interface_security_group_association" "linuxnsga" {
  count                     = "${length(local.VAR_LVM_name)}"
  network_interface_id      = "${azurerm_network_interface.linuxnic[count.index].id}"
  network_security_group_id = "${azurerm_network_security_group.linuxnsg.0.id}"
}

# SSHキーの作成
## SSHキーの作成
resource "tls_private_key" "keygen" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

## 秘密鍵内容
output "private_key_pem" {
  value = "${tls_private_key.keygen.private_key_pem}"
  sensitive = true
}

## 公開鍵内容（サーバの~/.ssh/authorized_keysに登録して利用する。）
output "public_key_openssh" {
  value = "${tls_private_key.keygen.public_key_openssh}"
}


# 仮想マシンの作成（Linux）
resource "azurerm_linux_virtual_machine" "linuxvm" {
  count                 = "${length(local.VAR_LVM_name)}"
  name                  = "${element(local.VAR_LVM_name, count.index)}"
  location              = "${var.VAR_location}"
  resource_group_name   = "${azurerm_resource_group.azurerg.name}"
  size                  = "${element(local.VAR_LVM_size, count.index)}"
  admin_username        = "${element(local.VAR_LVM_admin_username, count.index)}"
  network_interface_ids = [
    element(azurerm_network_interface.linuxnic.*.id, count.index)
  ]

  admin_ssh_key {
    username       = "${element(local.VAR_LVM_ASK_username, count.index)}"
    public_key     = tls_private_key.keygen.public_key_openssh
  }

  os_disk {
    caching              = "${element(local.VAR_LVM_OD_caching, count.index)}"
    storage_account_type = "${element(local.VAR_LVM_OD_storage_account_type, count.index)}"
  }

  source_image_reference {
    publisher = "${element(local.VAR_LVM_SIR_publisher, count.index)}"
    offer     = "${element(local.VAR_LVM_SIR_offer, count.index)}"
    sku       = "${element(local.VAR_LVM_SIR_sku, count.index)}"
    version   = "${element(local.VAR_LVM_SIR_version, count.index)}"
  }
}
