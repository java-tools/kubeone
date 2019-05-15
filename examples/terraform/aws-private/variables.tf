/*
Copyright 2019 The KubeOne Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

variable "cluster_name" {
  description = "prefix for cloud resources"
}

variable "aws_region" {
  default     = "eu-west-3"
  description = "AWS region to speak to"
}

variable "vpc_id" {
  default     = "default"
  description = "VPC to use ('default' for default VPC)"
}

variable "subnet_offset" {
  default     = 0
  description = "subnet offset (from main VPC cidr_block) number to be cut"
}

variable "subnet_netmask_bits" {
  default     = 8
  description = "default 8 bits in /16 CIDR, makes it /24 subnetworks"
}

variable "ssh_public_key_file" {
  default     = "~/.ssh/id_rsa.pub"
  description = "SSH public key file"
}

variable "ssh_private_key_file" {
  default     = ""
  description = "SSH private key file, only specify in absence of SSH agent"
}

variable "ssh_agent_socket" {
  description = "SSH Agent socket, default to grab from $SSH_AUTH_SOCK"
  default     = "env:SSH_AUTH_SOCK"
}

variable "ssh_port" {
  description = "SSH port"
  default     = 22
}

variable "ssh_username" {
  default     = "ubuntu"
  description = "SSH user, used only in output"
}

variable "control_plane_type" {
  default     = "t3.medium"
  description = "AWS instance type"
}

variable "worker_type" {
  default     = "t3.medium"
  description = "instance type for workers"
}

variable "ami" {
  default     = ""
  description = "AMI ID, use it to fixate control-plane AMI in order to avoid force-recreation it at later times"
}
