class PaginationRendererPrevious < WillPaginate::ActionView::LinkRenderer

  protected

# Tells WP how to render the "Next Page" link
  def previous_page
    # The only difference from the default here is we renamed the link to "More"
    # and added a custom class, twitter_pagination
    previous_or_next_page(@collection.previous_page,  '<img src="assets/previous.png" alt="previous" class="hover-move"/>', 'previous_pagination') if @collection.previous_page
  end

  # Remove all links except our :next_page
  def pagination
    [ :previous_page ]
  end

end