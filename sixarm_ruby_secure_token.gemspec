# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_secure_token"
  s.summary        = "SixArm.com » Ruby » SecureToken to generate a string that random, web-friendly, and user-friendly"
  s.description    = "SecureToken.new generates a new string suitable for security purposes."
  s.version        = "2.1.1"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["BSD", "GPL", "MIT", "PAL", "Various"]

  s.signing_key    = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-private.pem"
  s.cert_chain     = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"
  s.has_rdoc       = true

  s.files = [
    ".gemtest",
    "CONTRIBUTING.md",
    "Rakefile",
    "README.md",
    "VERSION",
    "lib/sixarm_ruby_secure_token.rb",
  ]

  s.test_files = [
    "test/sixarm_ruby_secure_token_test.rb",
  ]

end
