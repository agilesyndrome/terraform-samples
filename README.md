## Quick Guide 


1. Plan with default variables
```
git clone github.com/agilesyndrome/terraform-samples
terraform init
terraform plan
```


Notice the "tags/Environment" tag in the output, currently set to "Apples"
```
# aws_s3_bucket.main will be created
  + resource "aws_s3_bucket" "main" {
      + acceleration_status         = (known after apply)
      + acl                         = "private"
      + arn                         = (known after apply)
      + bucket                      = "my-bucket-name"
      + bucket_domain_name          = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags                        = {
          + "Environment" = "Apples"
          + "Name"        = "My bucket"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + versioning {
          + enabled    = (known after apply)
          + mfa_delete = (known after apply)
        }
    }
```

Reading Terraform's Symbols:
```
  +    :: create
  -    :: destroy -  Watch out! This will delete your AWS Resource!
  -/+  :: replace -  Delete the resource, then create a new one. Potential data loss!
  ~    :: update in-place
  <=   :: read existing values
```


2. Plan with maintenance mode, "tags/Environment" will change to a new value.
```
terraform plan -var-file=vars/maintenance.tfvars
```

3. Plan with production mode
```
terraform plan -var-file=vars/production.tfvars
```

4. Ready to apply your changes?

If you run this step, it will attempt to create this AWS S3 bucket
```
terraform apply -var-file=vars/production.tfvars
```




