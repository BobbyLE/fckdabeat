class PaginationRendererNext < WillPaginate::ActionView::LinkRenderer

  protected

# Tells WP how to render the "Next Page" link
  def next_page
    # The only difference from the default here is we renamed the link to "More"
    # and added a custom class, twitter_pagination
    previous_or_next_page(@collection.next_page,  '<article><img src="assets/next.png" alt="next"/></article>', 'previous_pagination') if @collection.next_page
  end

  # Remove all links except our :next_page
  def pagination
    [ :next_page ]
  end

end