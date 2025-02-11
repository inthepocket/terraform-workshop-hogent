# Terraform workshop HoGent

This repository contains the IaC (infrastructure as code) for the Terraform workshop for HoGent during the Tech & Trend days (February 12, 2025).

## Goal of this workshop

The goal of this workshop is to deploy a Cloud Run service on Google Cloud using Terraform. We will write the infrastructure as code and run Terraform to deploy the infrastructure on Google Cloud.

## Prerequisites

* [Terraform](https://www.terraform.io/downloads) (Add it to your PATH)
* An active Google Cloud account with JSON key file

## Workshop

### Install Terraform 

1. Install Terraform (https://www.terraform.io/downloads)

2. Test the installation with `terraform version`

### Google Cloud authentication

1. export the JSON key file for authentication with Google Cloud (https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started#adding-credentials)

    ```bash
    export GOOGLE_APPLICATION_CREDENTIALS={path_to_key_file}
    ```

### Write your infrastructure as code and run Terraform

1. Terraform init

    ```bash
    terraform init
    ```

2. Terraform plan

    ```bash
    terraform plan
    ```

3. Terraform apply

    ```bash
    terraform apply
    ```

4. Destroy your infrastructure

    ```bash
    terraform destroy
    ```