require 'nokogiri'
require 'pandoc-ruby'

module Reading
  class CVGenerator < Jekyll::Generator
    def generate(site)
      md = site.pages[0].to_s
      html = PandocRuby.convert(md, from: :markdown, to: :html)
      doc = Nokogiri::HTML(html)

      # build target,template pairs
      a = Array.new 
      doc.css("pre").each do |link|
          target = link.content
          template = link.attribute('class').value
          t = target + "," + template
          a.push(t)
      end

      # concate the pairs into a list
      out = a.shift
      a.each do |pair|
        out = out + ";" + pair
      end
      
      site.data["cv"] = out.to_s
    end
  end
end