require "jekyll_icon_tag/version"
require 'Liquid'

class IconTag < Liquid::Tag
  def initialize(tag_name, text, tokens)
    super
    @text = text
  end

  def render(_)
    "<i class=\"material-icons\">#{@text.strip}</i>"
  end
  
  Liquid::Template.register_tag "icon", self
end
