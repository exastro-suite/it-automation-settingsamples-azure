##############################
# 共通
##############################
# プロバイダの変数
variable "VAR_subscription_id" {default = ""}
variable "VAR_tenant_id" {default = ""}
variable "VAR_client_id" {default = ""}
variable "VAR_client_secret" {default = ""}

# リソースグループの変数
variable "VAR_RG_name" {default = ""}
variable "VAR_location" {default = ""}

# 仮想ネットワークの変数
variable "VAR_VN_name" {default = ""}
variable "VAR_VN_address_space" {default = ""}

# サブネットの変数
variable "VAR_subnet_name1" {default = ""}
variable "VAR_subnet_addlist1" {default = ""}
variable "VAR_subnet_name2" {default = ""}
variable "VAR_subnet_addlist2" {default = ""}
variable "VAR_subnet_name3" {default = ""}
variable "VAR_subnet_addlist3" {default = ""}
variable "VAR_subnet_name4" {default = ""}
variable "VAR_subnet_addlist4" {default = ""}
variable "VAR_subnet_name5" {default = ""}
variable "VAR_subnet_addlist5" {default = ""}
