Puppet sysstat Module
=========================

[![Build Status](https://travis-ci.org/jhoblitt/puppet-sysstat.png)](https://travis-ci.org/jhoblitt/puppet-sysstat)


Description
-----------

This module installs and manages the
[sysstat](/etc/puppet/env/prod/modules/sysstat) package which provides the
`sar` and `iostat` commands.


Examples
--------

    include systat

    class { 'systat': }


Support
-------

Please log tickets and issues at [github](https://github.com/jhoblitt/puppet-sysstat/issues)


Copyright
---------

Copyright (C) 2011-2013 Joshua Hoblitt <jhoblitt@cpan.org>

