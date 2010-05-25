=begin rdoc

= SixArm Ruby Gem: SecureToken

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2010 Joel Parker Henderson
License:: CreativeCommons License, Non-commercial Share Alike
License:: LGPL, GNU Lesser General Public License

Random token generator to create strong secure text tokens.

==Example
  SecureToken.new => "kavzwbnxremyqlkw"

This generates a 16-character token of all lowercase letters,
using Ruby's securerandom methods.

SecureToken is a string, so you can do any string methods on it.
You can change how tokens are randomly created, however you want.

==SecureRandom

Ruby 1.8.6 and older does not have a secure random number method,
so this gem checks to see if the SecureRandom class is defined;
if it is not, then we require our sixarm_ruby_secure_random gem.

=end


if !defined?(SecureRandom) then require 'sixarm_ruby_secure_random' end


class SecureToken < String

 COUNT = 16
 CHARS = ['a','b','c','d','e','f','g','h','j','k','m','n','p','r','s','t','u','v','w','x','y','z']

 def initialize
   super(Array.new(COUNT){CHARS[SecureRandom.random_number(CHARS.size)]}.join)
 end

end
