module ApplicationHelper
  #Returns the full title
  def full_title(page_title)
    base_title = "jraff.es"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
