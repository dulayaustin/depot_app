module ProductsHelper
  def truncate_string(string, length = 80)
    truncate(strip_tags(string), length: length)
  end 
end
