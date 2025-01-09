# -------------------------------------------------------------------------------------
#
# Copyright (c) 2025, WSO2 LLC. (https://www.wso2.com) All Rights Reserved.
#
# WSO2 LLC. licenses this file to you under the Apache License,
# Version 2.0 (the "License"); you may not use this file except
# in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied. See the License for the
# specific language governing permissions and limitations
# under the License.
#
# --------------------------------------------------------------------------------------

variable "fargate_iam_role_arn" {
  description = "IAM role ARN to be associated with the fargate"
  type        = string
  default     = null
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "fargate_profile_name" {
  description = "Name of the fargate profile"
  type        = string
}

variable "tags" {
  description = "Tags to be associated with the EKS"
  type        = map(string)
  default     = {}
}

variable "fargate_namespaces" {
  description = "Namespaces to be used in Fargate profile"
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of subnets to deploy nodepools"
  type        = list(string)
}
