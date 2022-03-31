# Identity and access parameters

api_fingerprint = "e6:0e:50:14:a9:cd:96:71:2b:7e:61:05:06:bc:3b:df"
api_private_key_path =  "~/.oci/oci_api_key.pem"
tenancy_id = "ocid1.tenancy.oc1..aaaaaaaaro7aox2fclu4urtpgsbacnrmjv46e7n4fw3sc2wbq24l7dzf3kba"
user_id = "ocid1.user.oc1..aaaaaaaafrfzsvmm6nwpwjor2woc3pejml6l6bhuv2mxqqbj6moj7arck6ua"
compartment_id = "ocid1.compartment.oc1..aaaaaaaah6ibn4qjy6chh7ilzha53oeeacmrmghdh5ziqhzn2xtgubhxolga"
label_prefix = "basedbexample"
dynamic_group_id = "ocid1.dynamicgroup.oc1..aaaaaaaa7i6e22djtdtrvivzzaehhwplcm7pi3jvmyzcdij6v7n3ow5aqoha"
# Identity and access parameters
# api_private_key      = <<EOT
#-----BEGIN RSA PRIVATE KEY-----
#content+of+api+key
#-----END RSA PRIVATE KEY-----
#EOT


home_region = "us-ashburn-1"
region = "us-phoenix-1"



# networking

internet_gateway_enabled = false

nat_gateway_enabled = true

netnum = {
  operator   = 33
  bastion    = 32
  db         = 16
}

newbits = {
  operator   = 13
  bastion    = 13
  db         = 11
}

service_gateway_enabled = true

vcn_cidr = "10.0.0.0/16"

vcn_dns_label = "basedb"

vcn_name = "basedb"


# bastion

bastion_access = "ANYWHERE"

bastion_enabled = true

bastion_image_id = "Autonomous"

bastion_notification_enabled = true

bastion_notification_endpoint = "<email_address>"

bastion_notification_protocol = "EMAIL"

bastion_notification_topic= "bastion_server_notification"

bastion_package_upgrade = false

bastion_shape = "VM.Standard.E2.1"

bastion_timezone = "Australia/Sydney"

bastion_use_autonomous = true

operator_enabled = false

operator_image_id = "NONE"

enable_instance_principal = true

operator_notification_enabled = false

operator_notification_endpoint = ""

operator_notification_protocol = "EMAIL"

operator_notification_topic= "operator_server_notification"

operator_package_upgrade = true

operator_shape   = "VM.Standard.E2.1"

operator_timezone= "Australia/Sydney"

operator_use_autonomous = false

# availability_domains

availability_domains = {
  bastion  = 1
  operator = 1
  db       = 1
}

# db

db_system_shape = "VM.Standard2.8"

cpu_core_count = 2

db_edition = "ENTERPRISE_EDITION_EXTREME_PERFORMANCE"

db_admin_password = "BEstrO0ng_#12"

db_name = "basedb"

db_home_db_name = "basedb2"

db_version = "19.0.0.0"

db_home_display_name = "basedbhome"

db_disk_redundancy = "HIGH"

db_system_display_name = "basedb_system"

hostname = "myoracledb"

n_character_set = "AL16UTF16"

character_set = "AL32UTF8"

db_workload = "OLTP"

pdb_name = "pdb1"

data_storage_size_in_gb = 256

license_model = "LICENSE_INCLUDED"

node_count = 2

data_storage_percentage = 40
