require 'thor'
require 'minizip/zip'

module Minizip
  class CLI < Thor
    desc "print_os", "print out OS version"
    def print_os
      puts Minizip::Zip.zip
    end
  end
end
