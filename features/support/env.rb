require 'aruba'
require 'aruba/cucumber'

# module ArubaOverrides
#   def detect_ruby_script(cmd)
#     if cmd =~ /^minizip /
#       if USING_OSX
#         puts "USING OSX"
#         "bundle exec ruby -I../../lib -S ../../bin/#{cmd}"
#       elsif USING_WINDOWS
#         "ruby -I../../lib -S ../../bin/#{cmd}"
#       end
#     else
#       super(cmd)
#     end
#   end
# end

# World(ArubaOverrides)

