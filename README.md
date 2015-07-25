docker-clamav-freshclam
===============

# Description
update virus databases

# Files

* Docker related
    * `Dockerfile` : Used for building Docker image.
* bash script
    * `env.cfg` : configuration for `build.sh` and `run.sh`
    * `build.sh` : a convinient script for building Docker image.
    * `run.sh` : a convinient script for running Docker container.
* other
    * `data` : this will be mounted as /var/lib/clamav when the container runs.

# LICENSE
MIT
