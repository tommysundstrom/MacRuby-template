

class Controller < NSObject
  LOG = Log.classlog(self)

  attr_reader :video_archive

  def init
    super_init
    LOG.init(self)
    
    return self
  end

  def awakeFromNib # Note: this is called also when the interface is defined from a Xib (xml version of nib)
    LOG.info "---------- New session - awaken from nib/xib ----------"

    ## @status_menu.setup_status_menu(self)    # Crashes when menu is used
    setup_status_menu

  end

  def setup_status_menu   # I've tried to move this to a separate class, but it just crashes, so I'll keep it here.
    LOG.debug "Enter setup_status_menu"
    statusbar = NSStatusBar.systemStatusBar
    status_item = statusbar.statusItemWithLength(NSVariableStatusItemLength)
    image_name = NSBundle.mainBundle.pathForResource_ofType('stretch', 'tiff')
    image = NSImage.alloc.initWithContentsOfFile(image_name)
    status_item.setImage(image)  # TODO: fix the image
    status_item.setTitle("AH")

    menu = NSMenu.alloc.init
    status_item.setMenu(menu)

    menu_item = menu.addItemWithTitle_action_keyEquivalent( "Test", "test:", '')  # TEST
    menu_item.setTarget(self)

    menu_item = menu.addItemWithTitle_action_keyEquivalent( "Quit", "terminate:", '')
    #menu_item.setKeyEquivalentModifierMask(NSCommandKeyMask)
    menu_item.setTarget(NSApp)

    LOG.info("Added status menu")
  end

  def test(sender)
    LOG.debug "Enters and exits test"
  end

end