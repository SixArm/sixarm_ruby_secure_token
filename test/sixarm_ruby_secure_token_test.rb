# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_secure_token'

describe SecureToken do

  before do
    S ||= SecureToken.new
  end

  it "=> String" do
    S.must_be_kind_of String
  end

  it "has the right length" do
    S.length.must_equal SecureToken::COUNT
  end

  it "has the right characters" do
    S.must_match /^[a-z]+$/
  end

end

