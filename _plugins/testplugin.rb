require 'nokogiri'
require 'pandoc-ruby'      

module Jekyll
  module ArrayToSet
      def array_to_set_string(arr)
          arr.split(",").uniq
      end
  end
end

Liquid::Template.register_filter(Jekyll::ArrayToSet)