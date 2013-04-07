module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "fckdabeat"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  def find_named_routes
    routes = []
   
    Rails.application.routes.named_routes.each do |name, route|
      req = route.requirements
      if req[:controller] == params[:controller] && req[:action] == params[:action]
        routes << name
      end
    end
   
    routes
  end
end