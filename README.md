# CCS Presentation at Ignite'22

This demo is about writing your own simple custom build policy for Code Security (CCS) in Prisma Cloud.

Sample  custom build policy

Sample Terraform file for testing purposes

Running a [**Checkov**](https://www.checkov.io/) scan to double-check that our custom policy is 

poliCustom policies are tested against sample TF files using 
```
checkov -f ignite22.tf -c ignite22 --external-checks-dir .
```

Checkov syntax
```
checkov -f <tf_file> -c <policy_id> --external-checks-dir <path_to_external_yaml_policies>
checkov -d <tf_directory> -c <policy_id> --external-checks-dir <path_to_external_yaml_policies>
```

API Script
```
alias pccs="python -m pccs.main"

pccs -h                                              ### Help
pccs -l                                              ### List
pccs -l -q policy.subtype=build                      ### List with query
pccs -p -f <path/policy_filename>                    ### Publish
pccs -u -f <path/policy_filename> -id <policy_id>    ### Update (--enable|disable)
pccs -d -id <policy_id>                              ### Delete
```

