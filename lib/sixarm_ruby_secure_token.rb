# -*- coding: utf-8 -*-
=begin rdoc
<<<<<<< HEAD
Please see README.rdoc
=end

require 'securerandom'

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

 COUNT = 32
 CHARS = ['a','b','c','d','e','f','g','h','j','k','m','n','p','r','s','t','u','v','w','x','y','z']

 def initialize
   super(Array.new(COUNT){CHARS[SecureRandom.random_number(CHARS.size)]}.join)
 end

end
