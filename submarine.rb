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
puts "One moment while we enumerate subdomains for #{target}...\n\n[#{Time.now}]: START"
File.open("hosts.txt","r").each_line do |subdomain|
	Resolv.new(resolvers=['208.67.222.222','208.67.220.220'])
	subdomain = subdomain.tr("\n","")
	ip = Resolv.getaddress "#{subdomain}.#{target}" rescue ""
	if ip != nil
		puts "#{subdomain}.#{target} : #{ip}"
	end
end
puts "Scan complete at: [#{Time.now}]: STOP"
