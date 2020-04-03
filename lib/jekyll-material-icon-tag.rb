require "jekyll-material-icon-tag/version"
require 'liquid'

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
