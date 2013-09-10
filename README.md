
levtéra
=======

<!---

TODO Add badges of this services

[![Travis](https://api.travis-ci.org/indefinido/canmoia.png)](http://travis-ci.org/indefinido/canmoia)
[![Coverage Status](https://coveralls.io/repos/indefinido/canmoia/badge.png?branch=master)](https://coveralls.io/r/indefinido/canmoia)
[![Code Climate](https://codeclimate.com/github/indefinido/canmoia.png)](https://codeclimate.com/github/indefinido/canmoia)
![project status](http://stillmaintained.com/indefinido/canmoia.png)

-->

Summary
-------

Levtéra (lev = move, téra = straight). The core functionality of Vehicle domain.

Description
-----------

The core domain concerns for Vehicles (Makes, Versions, Models, Plates)

Mainly for brasilian makes, but hopefully will expand and used in more services.


Features
--------

Domain Rules for

 - Makes
   -- Provider validation
 - Version
   -- Provider ivalidation
   -- Power, doors and valves numericality check
   -- Transmission type check (automatic, semi-automatic ...)
   -- Body type check (truck, convertible, ...)
 - Models
   -- Provider ivalidation
   -- Vehicle type check (car, motorcycle, ...)
 - Vehicles
   -- Provider ivalidation
   -- Fabrication and model years numericality
   -- Engine feeding check (alcohol, flexible, gasoline, ...)


Examples
--------

```ruby
  require 'levtera'

  class Version
    include Mongoid::Document
    include Levtera::Concerns::Version
  end

  version.transmission_type = :automatic
  version.valid? // true

  version.transmission_type = :potatoe
  version.valid? // false

```

Requirements
------------

Currently ORM dependend, sorry folks.

 - rails   >= 3
 - mongoid >= 3

Install
-------

Through gem command

  $ gem install levtera

Or add to your gemfile



This project rocks and uses WTFP-LICENSE.

