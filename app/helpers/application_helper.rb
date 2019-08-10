module ApplicationHelper
  
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    
    base_title = "Penguin"
    
    if page_title.empty?
      base_title
    else
      page_title + " • " + base_title
    end
  end
  
  # Returns the meta description on a per-page basis.
  def meta_description(page_description = '')
    if page_description.empty?
      "Penguin is the people management platform that empowers people leaders to build engaged, high-performing teams, inspire winning cultures, and make strategic, data-driven business decisions."
    else
      page_description
    end
  end
end