Puppet sysstat Module
=========================

[![Build Status](https://travis-ci.org/jhoblitt/puppet-sysstat.png)](https://travis-ci.org/jhoblitt/puppet-sysstat)

#### Table of Contents

1. [Overview](#overview)
2. [Description](#description)
3. [Usage](#usage)
4. [Limitations](#limitations)
    * [Tested Platforms](#tested-platforms)
5. [Support](#support)


Overview
--------

Manages the sysstat package


Description
-----------

This module installs and manages the
[sysstat](http://sebastien.godard.pagesperso-orange.fr/) package which provides
the `sar` and `iostat` commands.


Usage
-----

    include sysstat


Limitations
-----------

At present, only support for `$::osfamily == 'RedHat'` has been implimented.
Adding other Linux distrubtions should be trivial.

### Tested on

* el5.x
* el6.x


Support
-------

Please log tickets and issues at [github](https://github.com/jhoblitt/puppet-sysstat/issues)


