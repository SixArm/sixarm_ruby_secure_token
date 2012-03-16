# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'sixarm_ruby_secure_token'
require 'simplecov'
SimpleCov.start

class Testing < Test::Unit::TestCase

 def test_all
  20.times{
    x=SecureToken.new
    assert(x.is_a?(String))
    assert_equal(x.length,SecureToken::COUNT)
    assert(x=~/^[a-z]+$/,"lowercase letters:#{x}")
   }
 end

end

