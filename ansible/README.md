# TPC-C Benchmark Ansible playbook
Ansible playbooks to provision and test the TPC-C Benchmark:

* **create-instances.yml:** create VM instances on Google Cloud Platform with certain hardware specifications and create a bucket, if needed.

* **install-benchmark.yml:** download TPC-C benchmark from bucket and install it.

* **install-db.yml:** install and configurate PostgreSQL.

* **load.yml:** populate database with a certain number os warehouses, dump database and upload backup to bucket.

* **run.yml:** restore database from a dump file, configurate workload properties, run benchmark and upload result to bucket.

* **teardown-instances.yml:** removes instances from Google Cloud Platform.

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

`gcp_region` region where the VM instances and the storage bucket will be created

`gcp_project` project ID

`bucket` name of the bucket

`db_name` name of the database for the TPC-C Benchmark

`gs_access_key` access key to access the Storage

`gs_secret_key` secret to access the Storage

## How to run

```shell
$ ansible-playbook playbook.yml
```
