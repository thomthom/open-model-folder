#-------------------------------------------------------------------------------
#
# Thomas Thomassen
# thomas[at]thomthom[dot]net
#
#-------------------------------------------------------------------------------

require 'sketchup.rb'

unless file_loaded?( File.basename(__FILE__) )
  menu = UI.menu( 'Plugins' )
  menu.add_item( 'Open Model Folder' ) {
    path = Sketchup.active_model.path
    unless path.empty?
      folder = File.dirname( path )
      UI.openURL( folder )
    end
  }
end

#-------------------------------------------------------------------------------

file_loaded( File.basename(__FILE__) )

#-------------------------------------------------------------------------------