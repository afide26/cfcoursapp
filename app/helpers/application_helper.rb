module ApplicationHelper

  def full_page_title(page_title=" ")
    base_title = "Bike Berlin"
    if page_title.empty?
      "#{base_title}"
    else
      "#{page_title} | #{base_title}"
    end
  end
end
