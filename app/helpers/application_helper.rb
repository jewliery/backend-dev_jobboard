module ApplicationHelper
    def md(text)
        require 'kramdown'
        return Kramdown::Document.new(text).to_html.html_safe
      end
end
