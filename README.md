# BucketSnoop
A Firefox extension and WebSocket handler that checks s3 buckets while your browse.

### It works but it's nowhere near finished, use with care.

# Setup
## Server

* For now you need [AWS CLI](https://aws.amazon.com/cli/) installed and configured, boto3 looks in ~/.aws/credentials 

Clone the repo

Change to the /BucketSnoopServer/ directory

create a venv $ python3 -m venv .venv

activate your venv $ source .venv/bin/activate

upgrade pip $ pip install --upgrade pip

install requiements $ pip install -r requirements

start server $ python server.py 

## Client
open Firefox and go to about:debugging

click on "Load Temporary Add-on"

find /BucketSnoopClient/bucketsnoop.js and load it

# Usage

The client should now be loaded and connected to the server, while browsing watch the output of the server as discovered buckets are checked.

If a bucket name can be parsed it will;

* Try to pull the bucket ACL and list the permissions
* Check if objects can be listed

If a bucket name is not parsed it will;

* Highlight that the file has been loaded from S3

URIs are cached in local storage to avoid repeat requests, currently this is cleared each time the add-on is reloaded.