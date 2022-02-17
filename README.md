# Terraform workshop HoGent

This repository contains the IaC (infrastructure as code) for the Terraform workshop for HoGent during the Tech & Trend days (February 17, 2022).

## Goal of this workshop

The goal of this workshop is to deploy an immutable (*not possible to change after creation*) webserver. We will have a first hands-on with Terraform and run some basic commands. We will use Google Cloud as cloud provider to apply this infrastructure.

## Prerequisites

* [Terraform](https://www.terraform.io/downloads) (Add it to your PATH)
* An active Google Cloud account with JSON key file

## Workshop

### Install Terraform 

1. Install Terraform (https://www.terraform.io/downloads)

2. Test the installation with `terraform version`

### Google Cloud authentication

1. export the JSON key file for authentication with Google Cloud (https://cloud.google.com/docs/authentication/getting-started#windows)

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