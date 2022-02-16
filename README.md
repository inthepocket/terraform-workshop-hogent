# Terraform workshop HoGent

This repository contains the IaC (infrastructure as code) for the Terraform workshop for HoGent during the Tech & Trend days (February 17, 2022).

## How to use this repository

1. Install Terraform (https://www.terraform.io/downloads)

2. export the JSON key file for authentication with Google Cloud

    ```bash
    export GOOGLE_APPLICATION_CREDENTIALS={path_to_key_file}
    ```

2. Run Terraform init

    ```bash
    terraform init
    ```

3. Run Terraform plan

    ```bash
    terraform plan
    ```

4. Run Terraform apply

    ```bash
    terraform apply
    ```

6. Destroy your infrastructure

    ```bash
    terraform destroy
    ```