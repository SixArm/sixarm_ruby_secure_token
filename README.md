# Ruby » <br> SecureToken to generate a random string

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_secure_token.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_secure_token)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_secure_token.png)](https://travis-ci.org/SixArm/sixarm_ruby_secure_token)

* Doc: <http://sixarm.com/sixarm_ruby_secure_token/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_secure_token>
* Repo: <http://github.com/sixarm/sixarm_ruby_secure_token>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

This is a secure token generator that creates cryptographically-strong strings.

Example:

    SecureToken.new  
    #=> "kavzwbnxremyqckwtxrumxzapmfmpwve"


For docs go to <http://sixarm.com/sixarm_ruby_secure_token/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_secure_token

Bundler:

    gem "sixarm_ruby_secure_token", "~>2.1.0"

Require:

    require "sixarm_ruby_secure_token"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_secure_token --trust-policy HighSecurity


## Details

This generates a 32-character token of lowercase letters.

This uses Ruby's SecureRandom methods for strong security.

SecureToken is a string, so you can do any string methods on it.

You can change how tokens are randomly created by using cusomtization.


## Customization

To customize the choices:

    SecureToken.choices = ['a','b','c']
    SecureToken.new 
    #=> "acbbaccbabcabcabbcabcabcdbbcabcb"

To customize the length:

    SecureToken.length = 8
    SecureToken.new 
    #=> "kavzwbnx"

The default length is 32. 

The default choices are the lowercase English letters 'a' to 'z', but omitting the letters 'i', 'l', 'o', 'q'. We omit these because our user testing shows these characters are often misunderstood by users.


## Enumeration

To use an enumeration #next method:

    s = SecureToken.new
    s.next  #=> 'bacbaacb'


## Changes

* 2013-08-20 2.1.0 Add #next to enable using this as an enumeration.
* 2013-08-18 2.0.0 Upgrade for Ruby 2.0.0; add .length and .choices methods.
* 2012-03-21 1.4.0 Upgrade for Ruby 1.9.3, minitest/spec, and improved docs.
* 2011-04-22 1.3.0 Update to 32 characters
* 2011-04-21 1.2.2 End support for Ruby 1.8.6
