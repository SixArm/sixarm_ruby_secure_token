# -*- coding: utf-8 -*-
=begin rdoc
Please see README.rdoc
=end

require 'securerandom'

class SecureToken < String

 COUNT = 32
 CHARS = ['a','b','c','d','e','f','g','h','j','k','m','n','p','r','s','t','u','v','w','x','y','z']

 def initialize
   super(Array.new(COUNT){CHARS[SecureRandom.random_number(CHARS.size)]}.join)
 end

end
