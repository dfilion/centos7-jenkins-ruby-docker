/bin/bash
#
# Install a selection of Ruby versions, in particular those compatible with
# the various active Puppet versions.
#
# See https://github.com/rvm/rvm/blob/master/config/remote for a list of
# available binaries.
#
# There are no Ruby binaries currently available for CentOS 7.
#  - Last check: 2016.04.13
#

set -e

# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then
  # First try to load from a user install
  source "$HOME/.rvm/scripts/rvm"
elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then
  # Then try to load from a root install
  source "/usr/local/rvm/scripts/rvm"
else
  printf "ERROR: An RVM installation was not found.\n"
  exit 3
fi

#source /var/lib/jenkins/.rvm/scripts/rvm

rvm install $@
rvm use $@
gem install bundler
rvm list
