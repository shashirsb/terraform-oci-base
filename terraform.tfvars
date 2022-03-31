# provider parameters

oci_base_provider = {
  api_fingerprint = "e6:0e:50:14:a9:cd:96:71:2b:7e:61:05:06:bc:3b:df"
  api_private_key_path =  "~/.oci/oci_api_key.pem"
  region               = "us-phoenix-1"
  tenancy_id           = "ocid1.tenancy.oc1..aaaaaaaaro7aox2fclu4urtpgsbacnrmjv46e7n4fw3sc2wbq24l7dzf3kba"
  user_id              = "ocid1.user.oc1..aaaaaaaafrfzsvmm6nwpwjor2woc3pejml6l6bhuv2mxqqbj6moj7arck6ua"
}

# general oci parameters

oci_base_general = {
  compartment_id       = "ocid1.compartment.oc1..aaaaaaaah6ibn4qjy6chh7ilzha53oeeacmrmghdh5ziqhzn2xtgubhxolga"
  label_prefix         = "dev"
}

# networking

oci_base_vcn = {
  create_drg                   = false
  drg_display_name             = "drg"
  internet_gateway_enabled     = true
  lockdown_default_seclist     = true
  nat_gateway_enabled          = true
  nat_gateway_public_ip_id     = "none"  
  service_gateway_enabled      = true
  tags = {
    department  = "finance"
    environment = "dev"
  }
  vcn_cidr                     = "10.0.0.0/16"
  vcn_dns_label                = "base"
  vcn_name                     = "base"
  internet_gateway_route_rules = [
    /*
    {
      destination = "192.168.1.0/24"
      destination_type = "CIDR_BLOCK"
      network_entity_id = "drg" // use drg created by this module. Requires `create_drg = true`
      description = "route through drg"
    },
    {
      destination = "8.8.8.0/24"
      destination_type = "CIDR_BLOCK"
      network_entity_id = "internet_gateway" // use Internet Gateway created by this module. Requires `internet_gateway_enabled = true`
      description = "route through Internet Gateway"
    },
    {
      destination = "8.8.8.0/24"
      destination_type = "CIDR_BLOCK"
      network_entity_id = "ocid1.drg." // use an externally created resource or a resource that was not available at the time of the 1st run`
      description = "route through an externally created resource or a resource that was not available at the time of the 1st run"
    }
    */ 
  ]
  nat_gateway_route_rules      = [
    /*
    {
      destination = "192.168.1.0/24"
      destination_type = "CIDR_BLOCK"
      network_entity_id = "drg" // use drg created by this module. Requires `create_drg = true`
      description = "route through drg"
    },
    {
      destination = "8.8.8.0/24"
      destination_type = "CIDR_BLOCK"
      network_entity_id = "nat_gateway" // use NAT gateway created by this module. Requires `nat_gateway_enabled = true`
      description = "route through NAT gateway"
    },
    {
      destination = "8.8.8.0/24"
      destination_type = "CIDR_BLOCK"
      network_entity_id = "ocid1.drg." // use an externally created resource or a resource that was not available at the time of the 1st run`
      description = "route through an externally created resource or a resource that was not available at the time of the 1st run"
    }
    */
  ]
}

# bastion

oci_base_bastion = {
  availability_domain  = 1
  bastion_access        = "ANYWHERE"
  bastion_enabled       = true
  bastion_image_id      = "Autonomous"
  bastion_operating_system_version = "7.9"  
  bastion_shape = {
    # shape = "VM.Standard.E2.2"
    shape="VM.Standard.E3.Flex",
    ocpus=1,
    memory=4,
    boot_volume_size=50
  }
  bastion_state         = "RUNNING"  
  bastion_upgrade       = true
  netnum                = 0
  newbits               = 14
  notification_enabled  = false
  notification_endpoint = ""
  notification_protocol = "EMAIL"
  notification_topic    = "bastion"
  ssh_private_key_path  = "~/.oci/master-ssh-key"
  ssh_public_key        = ""
  ssh_public_key_path   = "~/.oci/master-ssh-key.pub"
  tags = {
    department  = "finace"
    environment = "dev"
    role        = "bastion"
  }
  timezone              = "Australia/Sydney"
}

# operator
oci_base_operator = {
  availability_domain       = 1
  operator_enabled          = true
  operator_image_id         = "Oracle"
  operator_shape = {
    # shape = "VM.Standard.E2.2"
    shape="VM.Standard.E4.Flex",
    ocpus=1,
    memory=4,
    boot_volume_size=50
  }
  operator_state            = "RUNNING"  
  operating_system_version  = "8"
  operator_upgrade          = false
  enable_instance_principal = true
  netnum                    = 1
  newbits                   = 14
  notification_enabled      = false
  notification_endpoint     = ""
  notification_protocol     = "EMAIL"
  notification_topic        = "operator"
  ssh_private_key_path      = "~/.oci/master-ssh-key"
  ssh_public_key            = ""
  ssh_public_key_path       = "~/.oci/master-ssh-key.pub"
  tags = {
    department  = "finance"
    environment = "dev"
    role        = "operator"
  }

  timezone = "Australia/Sydney"
}