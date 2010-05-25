Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_secure_token"
  s.summary           = "SixArm Ruby Gem: SecureToken to generate a cryptographic string that is web-friendly and user-friendly"
  s.version           = "1.2.1"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm.com.rsa.private.key.and.certificate.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true
  s.files             = ['README.rdoc','LICENSE.txt','lib/sixarm_ruby_secure_token.rb']
  s.test_files        = ['test/sixarm_ruby_secure_token_test.rb']

end
