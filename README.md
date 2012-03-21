# SixArm.com » Ruby » <br> SecureToken to generate a cryptographic string that is web safe

* Docs: <http://sixarm.com/sixarm_ruby_secure_token/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_secure_token>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Secure random token generator to create strong secure text tokens.

For docs go to <http://sixarm.com/sixarm_ruby_secure_token/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_secure_token

Bundler:

    gem "sixarm_ruby_secure_token", "~>1.3.0"

Require:

    require "sixarm_ruby_secure_token"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_secure_token --test --trust-policy HighSecurity


## Examples

Require:

    require "sixarm_ruby_secure_token"

Usage:

    SecureToken.new => "kavzwbnxremyqlkwtxoimxzqpofmpove"

This generates a 32-character token of all lowercase letters,
using Ruby's securerandom methods.

SecureToken is a string, so you can do any string methods on it.
You can change how tokens are randomly created, however you want.


## Changes

* 2012-03-14 1.3.0 Update docs, tests
* 2011-04-22 1.3.0 Update to 32 characters
* 2011-04-21 1.2.2 End support for Ruby 1.8.6

## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2013 Joel Parker Henderson
