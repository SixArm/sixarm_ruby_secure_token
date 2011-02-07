# -*- coding: utf-8 -*-
=begin rdoc

= SixArm.com » Ruby » SecureToken gem to generate a strong random text string

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2011 Joel Parker Henderson
License:: See LICENSE.txt file

SecureToken is a random text generator that is cryptographically secure.

This is useful for creating things like passwords, hash salt, and chaff.


==Example
  SecureToken.new => "kavzwbnxremyqlkw"

This generates a 16-character token of all lowercase letters,
using secure random numbers.

SecureToken is a string, so you can do any string methods on it.
You can change how tokens are randomly created, however you want.

==SecureRandom

Ruby 1.8.6 and older does not have a secure random number method,
so this gem checks to see if the SecureRandom class is defined;
if it is not, then we require our sixarm_ruby_secure_random gem.

=end

if !defined?(SecureRandom)
  begin
    # First we will try to load the Ruby standard library
    require 'securerandom'
  rescue
    # Second we will try to load our own SecureRandom gem library
    require 'sixarm_ruby_secure_random' 
  end
end


class SecureToken < String

 COUNT = 16
 CHARS = ['a','b','c','d','e','f','g','h','j','k','m','n','p','r','s','t','u','v','w','x','y','z']

 def initialize
   super(Array.new(COUNT){CHARS[SecureRandom.random_number(CHARS.size)]}.join)
 end

end
