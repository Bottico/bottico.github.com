module Jekyll
  class Sublime < Liquid::Tag
    @@width = 640
    @@height = 510

    def initialize(name, url, tokens)
      super
      @url = url
    end

    def render(context)
      %(<iframe width="#{@@width}" height="#{@@height}" frameborder="0" src="/embed/video.html?url=#{@url}" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>)
    end
  end
end

Liquid::Template.register_tag('sublime', Jekyll::Sublime)