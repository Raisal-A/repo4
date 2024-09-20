alb_name            = "my-alb"
security_group_id   = "sg-xxxxxxxx"
subnet_ids          = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]

ecr_name            = "my-ecr"

cluster_name        = "my-eks-cluster"
role_arn            = "arn:aws:iam::123456789012:role/EKS-Cluster-Role"
