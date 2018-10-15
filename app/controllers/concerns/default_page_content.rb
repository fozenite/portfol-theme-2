module DefaultPageContent
  extend ActiveSupport::Concern
  included do 
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Rohit Moza | Portfolio Website"
    @seo_keywords = "Rohit Moza portfolio" 
  end
end
