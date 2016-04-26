#
require 'process_explorer/version'

if Gem.win_platform?
  require 'process_explorer/win'
else
  require 'process_explorer/dummy_linux'
end

