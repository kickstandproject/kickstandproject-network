#
# kickstandproject-network: The Kickstand Project
#
# Copyright (C) 2012, PolyBeacon, Inc.
#
# Paul Belanger <paul.belanger@polybeacon.com>
#
# See http://kickstand-project.org for more information about
# the Kickstand project. Please do not directly contact any
# of the maintainers of this project for assistance; the
# project provides a web site, forums and IRC channels for
# your use.
#
# This program is free software, distributed under the terms
# of the Apache License, Version 2.0. See the LICENSE file at
# the top of the source tree.
#
class network::client::init {
  include network::client::install
  include network::client::config
  include network::client::service

  File {
    group => $network::params::group,
    mode  => $network::params::mode,
    owner => $network::params::owner,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
