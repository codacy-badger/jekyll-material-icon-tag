require "swedbank_pay_jeyll_icon_tag/version"
require 'Liquid'

module SwedbankPayJeyllIconTag
  class IconTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(_)
      "<i class=\"material-icons\">#{@text.strip}</i>"
    end
  end
  
  Liquid::Template.register_tag('icon', self)
end
