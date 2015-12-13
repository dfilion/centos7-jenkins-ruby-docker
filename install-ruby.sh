#
# Install a selection of Ruby versions, in particular those compatible with
# the various active Puppet versions.
#
# See https://github.com/rvm/rvm/blob/master/config/remote for a list of
# available binaries.
#
# There are no Ruby binaries currently available for CentOS 7.
#  - Last check: 2015.11.23
#

# Setup RVM in the Jenkins account.
/bin/gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
/usr/bin/curl -sSL https://get.rvm.io | /bin/bash -s stable
source /var/lib/jenkins/.rvm/scripts/rvm

for R in ruby-1.8.7-head ruby-1.9.3-p551 ruby-2.0.0-p598 ruby-2.1.5 ruby-2.2.0 ruby-2.2.1
do
	rvm install $R
	rvm use $R
	gem install bundler
done
