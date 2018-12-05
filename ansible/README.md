# TPC-C Benchmark Ansible playbook
Ansible playbooks to provision and test the TPC-C Benchmark:

* **benchmark.yml:** Used to create VM instances, install TPC-C Benchmark and PostgreSQL, populate the database and save a backup in the storage bucket.

* **run.yml:** Used to run the TPC-C Benchmark with different workload propertied and save the result in the storage bucket.

* **teardown.yml:** Used to delete the VM instances that were created with the benchmark playbook.

## Configurations

### From Google Cloud Platform console

##### Add SSH Key to the project
* Compute Engine > Metadata > Add SSH Key

##### Create and fetch JSON key for the project
* IAM & Admin > Service Accounts > Select or Create SA > Create Key (JSON)
* Save JSON credentials file in `~/.gcloud` as `credentials-tpc-c.json`

##### Create and fetch keys to access the Storage
* Storage > Settings > Interoperability > Create a new key

### Playbooks variables

`user` your username

`gcp_region` region where the VM instances and the storage bucket will be created

`gcp_project` project ID

`bucket` name of the bucket

`db_name` name of the database for the TPC-C Benchmark

`gs_access_key` access key to access the Storage

`gs_secret_key` secret to access the Storage

## How to run

```shell
$ ansible-playbook -i inventory.gcp.yml playbook.yml
```
