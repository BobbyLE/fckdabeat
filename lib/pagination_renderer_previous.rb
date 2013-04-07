class PaginationRendererPrevious < WillPaginate::ActionView::LinkRenderer

  protected

# Tells WP how to render the "Next Page" link
  def previous_page
    # The only difference from the default here is we renamed the link to "More"
    # and added a custom class, twitter_pagination
    if @collection.previous_page
      previous_or_next_page(@collection.previous_page, '<article><img src="assets/previous.png" alt="next"/></article>', 'previous_pagination') 
    else
      previous_or_next_page(@collection.previous_page, '<article><img src="assets/base.png" alt="base"/></article>', 'base')
    end
  end

  # Remove all links except our :next_page
  def pagination
    [ :previous_page ]
  end

end