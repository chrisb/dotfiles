#!/usr/bin/env ruby

puts "[ruby] Getting list of versions"

versions = `rbenv install -l`.split("\n")
versions.reject! { |v| v.include? ('-') }
versions.map! { |v| Gem::Version.new(v) }
versions.sort!
versions.reverse!

version_to_install = versions.first.to_s

puts "[ruby] Installing latest (#{version_to_install})"

system "rbenv install #{version_to_install}", exception: true

puts "[ruby] Setting latest to default"

system "rbenv global #{version_to_install}"