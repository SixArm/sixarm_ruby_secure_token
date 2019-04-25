# SixArm.com → Ruby → <br> SecureToken to generate a random string

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_secure_token.svg)](http://badge.fury.io/rb/sixarm_ruby_secure_token)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_secure_token.png)](https://travis-ci.org/SixArm/sixarm_ruby_secure_token)
[![Code Climate](https://api.codeclimate.com/v1/badges/de591aacc1a3f39cee6a/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_secure_token/maintainability)

* Git: <https://github.com/SixArm/sixarm_ruby_secure_token>
* Doc: <http://sixarm.com/sixarm_ruby_secure_token/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_secure_token>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md).

<!--header-shut-->


## Introduction

This is a secure token generator that creates cryptographically-strong strings.

Example:

    SecureToken.new  
    #=> "kavzwbnxremyqckwtxrumxzapmfmpwve"


For docs go to <http://sixarm.com/sixarm_ruby_secure_token/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_secure_token

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_secure_token'

### Require

To require the gem in your code:

    require 'sixarm_ruby_secure_token'

<!--install-shut-->


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
