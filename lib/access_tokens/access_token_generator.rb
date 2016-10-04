module AccessTokenGenerator

	def self.generate(n)
		random_str = SecureRandom.urlsafe_base64(n)
		random_str.gsub(/(_|-)/) {|barf| SecureRandom.hex(1)}
	end

end
