#!/usr/bin/ruby
#
# Submarine ver 1.0
# small, simple, and fast subdomain enumeration
# Author: DustyFresh 2014
# Educational, or professional use only.
#
require 'resolv' # this is a built in gem :)
target = ARGV.first
if target == nil
	puts "Please supply a domain name to scan."
	exit
end
puts "One moment while we enumerate subdomains for #{target}...\n\n"
File.open("hosts.txt","r").each_line do |subdomain|
	Resolv.new(resolvers=['8.8.8.8','8.8.4.4'])
	subdomain = subdomain.tr("\n","")
	ip = Resolv.getaddress "#{subdomain}.#{target}" rescue ""
	if ip != nil
		puts "#{subdomain}.#{target} : #{ip}"
	end
end
