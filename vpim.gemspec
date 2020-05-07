require 'rubygems'
require 'pp'
require_relative 'gemspec'
require_relative 'lib/vpim/version'

Gem::Specification.new do |s|
  info(s)
  s.name              = "vpim"
  s.version           = Vpim::VERSION
  s.summary           = "iCalendar and vCard support for ruby"
  s.description       = <<'---'
This is a pure-ruby library for decoding and encoding vCard and iCalendar data
("personal information") called vPim.
---
  s.extra_rdoc_files  = ["README.rdoc", "CHANGES", "COPYING", "samples/README.mutt" ]
  s.files             = Dir['lib/vpim/**/*.rb'] + Dir['lib/vpim.rb'] + Dir['bin/*'] + Dir['samples/*'] + Dir['test/test_*.rb'] + Dir['COPYING'] + Dir['README.rdoc'] + Dir['CHANGES']
  s.test_files        = Dir.glob("test/test_*.rb")

  #s.executables       = FileList["bin/*"].map{|path| File.basename(path)}
  #s.executables       = Dir["bin/*"].map{|path| File.basename(path)}
  s.executables       = []

  s.require_path      = "lib"
# s.add_dependency("plist")
# s.autorequire       = "vpim"
end
