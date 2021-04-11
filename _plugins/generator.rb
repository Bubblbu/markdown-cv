require 'nokogiri'
require 'pandoc-ruby'

module Reading
  class Generator < Jekyll::Generator
    def generate(site)
      md = site.pages[0].to_s
      
      a = Array.new 

      html = PandocRuby.convert(md, from: :markdown, to: :html)
      doc = Nokogiri::HTML(html)
        
      doc.css("pre").each do |link|
          target = link.content
          template = link.attribute('class').value
          t = target + "," + template
          a.push(t)
      end

      out = a.shift

      a.each do |pair|
        out = out + ";" + pair
      end
      
      site.data["cv"] = out.to_s
    end
  end
end