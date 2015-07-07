# -*- coding: utf-8 -*-
require "minitest/autorun"
Minitest::Test ||= MiniTest::Unit::TestCase
require "simplecov"
SimpleCov.start
require "sixarm_ruby_secure_token"

describe SecureToken do

  describe "#new" do

    before do
      @s = SecureToken.new
    end

    it "is a String" do
      @s.must_be_kind_of String
    end
    
    it "is the right length" do
      @s.length.must_equal SecureToken.length
    end

    it "has the right characters" do
      @s.must_match /^[a-z]+$/
    end

  end

  describe "#length" do

    it "sets & gets" do
      x = rand(999)
      SecureToken.length = x
      SecureToken.length.must_equal x
    end

  end

  describe "#choices" do

    it "sets & gets" do
      x = ['a','b','c']
      SecureToken.choices = x
      SecureToken.choices.must_equal x
    end

  end

  describe "changing the length and choices" do

    it "generates the right length with the right choices" do
      SecureToken.length = 8
      SecureToken.choices = ['a','b']
      s = SecureToken.new
      s.length.must_equal 8
      s.must_match /^[a-b]+$/
    end

  end

  describe "#next" do

    before do
      SecureToken.length = 32
      SecureToken.choices = ('a'..'z').to_a    
      @a = SecureToken.new
      @b = @a.next
    end

    it "is different" do
      @b.wont_equal @a
    end

    it "is different even in the first half, which is a decent heuristic" do
      @b[0,@b.length/2].wont_equal @a[0,@a.length/2]
    end

    it "has the same length" do
      @b.length.must_equal @a.length
    end

  end

end

