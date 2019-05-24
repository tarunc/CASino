# CASino (Supports RAILS 5.2.0) [![Build Status](https://secure.travis-ci.org/rbCAS/CASino.png?branch=master)](https://travis-ci.org/rbCAS/CASino) [![Coverage Status](https://coveralls.io/repos/rbCAS/CASino/badge.png?branch=master)](https://coveralls.io/r/rbCAS/CASino?branch=master)

CASino Rails Engine (used in CASinoApp).

It currently supports [CAS 1.0 and CAS 2.0](http://apereo.github.io/cas) as well as [CAS 3.1 Single Sign Out](https://wiki.jasig.org/display/CASUM/Single+Sign+Out).

## Setup

Please check our [documentation](http://casino.rbcas.com/) for setup and configuration instructions.

## Test Suite

Run the RSpec test suite by installing the `appraisal` gem and dependencies:

    $ gem install appraisal
    $ appraisal install

And then running tests using `appraisal`:

    $ appraisal rake

## License

CASino is released under the [MIT License](http://www.opensource.org/licenses/MIT). See LICENSE.txt for further details.
