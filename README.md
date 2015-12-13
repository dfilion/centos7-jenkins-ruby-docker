## What is centos6-jenkins-ruby?

centos7-jenkins-ruby is an image that provides a CentOS 7 SSH Jenkins-CI client with
various Ruby versions pre-installed using RVM.

The purpose of this image is to provide a Jenkins SSH client to test Puppet
modules against various Ruby versions.

The following Ruby versions are pre-installed.

- ruby-1.8.7-head
- ruby-1.9.3-p551
- ruby-2.0.0-p598
- ruby-2.1.5
- ruby-2.2.0
- ruby-2.2.1

As of this writing, these are also the Ruby versions supported by Puppet.

### Supported tags and respective `Dockerfile` links

- latest ([Dockerfile](https://github.com/dfilion/centos7-jenkins-docker/blob/master/Dockerfile))


## Usage
To run the latest version of the container:

docker run -d -P rainingpackets/centos7-jenkins-ruby

## SSH access
You can ssh into the running image using the default credentials.

Username: jenkins
Password: jenkins

The ssh host keys are generated on every execution of the image.

Static ssh keys (user or host) are not yet supported.

