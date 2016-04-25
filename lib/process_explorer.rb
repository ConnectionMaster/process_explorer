#
require 'process_explorer/version'
 
if Gem.win_platform? 
  require 'process_explorer/win'
else
  raise 'Not supported platform'
end

