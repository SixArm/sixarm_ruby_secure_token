# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

require "securerandom"

class SecureToken < String

  @@length = 32

  def self.length
    @@length
  end

  def self.length=(x)
    @@length = x
  end

  @@choices = ['a','b','c','d','e','f','g','h','j','k','m','n','p','r','s','t','u','v','w','x','y','z']

  def self.choices
    @@choices
  end

  def self.choices=(x)
    @@choices = x
  end

  def initialize
    super(Array.new(@@length){@@choices[SecureRandom.random_number(@@choices.size)]}.join)
  end

  def next
    SecureToken.new
  end

end
