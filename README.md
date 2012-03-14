# SixArm.com » Ruby » <br> SecureToken to generate a cryptographic string that is web safe

* Docs: <http://sixarm.com/sixarm_ruby_secure_token/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_secure_token>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Secure random token generator to create strong secure text tokens.

For docs go to <http://sixarm.com/sixarm_ruby_secure_token/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_ruby_secure_token

Bundler:

    gem "sixarm_ruby_secure_token", "=1.3.0"

Require:

    require "sixarm_ruby_secure_token"


## Examples

Require:

    require "sixarm_ruby_secure_token"

Usage:

    SecureToken.new => "kavzwbnxremyqlkwtxoimxzqpofmpove"

This generates a 32-character token of all lowercase letters,
using Ruby's securerandom methods.

SecureToken is a string, so you can do any string methods on it.
You can change how tokens are randomly created, however you want.
