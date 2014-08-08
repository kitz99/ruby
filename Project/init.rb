# init.rb
### Food FINDER ###
# Starts from command line #


APP_ROOT = File.dirname(__FILE__)

# require "#{APP_ROOT}\\lib\\guide"

# require File.join(APP_ROOT, 'lib', 'guide')

$:.unshift( File.join(APP_ROOT, 'lib') ) # tell ruby to search in 'lib' for files
require("guide")

guide = Guide.new('restaurans.txt')
guide.launch!



