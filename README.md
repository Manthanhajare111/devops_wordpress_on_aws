# devops_wordpress_on_aws

infra/
  main.tf              # providers, remote backend, data sources
  variables.tf         # variable definitions + types
  outputs.tf           # instance_ip, eip, bucket name, etc.
  networking.tf        # security groups, eip
  compute.tf           # ec2 instance, keypair, user_data
  backend-bootstrap/   # one-time code to create the S3 backend itself
    main.tf
.gitignore             # exclude state, .env, wp/uploads, etc.

exemplifi-wp/
├─ README.md
├─ .gitignore
├─ infra/
│  ├─ backend-bootstrap/
│  │  └─ main.tf
│  ├─ main.tf
│  ├─ variables.tf
│  ├─ outputs.tf
│  ├─ networking.tf
│  ├─ compute.tf
│  ├─ data.tf
│  ├─ cloud-init.sh
├─ wordpress/         # (empty now; will fill later from server)
└─ .github/
   └─ workflows/
      └─ deploy.yml
