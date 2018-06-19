module ApplicationHelper
  # https://richonrails.com/articles/rendering-markdown-with-redcarpet
  def markdown(text)
    options = {
      filter_html:                  false,
      hard_wrap:                    true,
      link_attributes:              { rel: 'nofollow',
                                      target: "_blank" },
      prettify:                     true
    }

    extensions = {
      autolink:                     true,
      disable_indented_code_blocks: true,
      fenced_code_blocks:           true,
      highlight:                    true,
      no_intra_emphasis:            true,
      quote:                        true,
      strikethrough:                true,
      superscript:                  true,
      tables:                       true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end
end
