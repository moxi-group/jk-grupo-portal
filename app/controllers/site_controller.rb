class SiteController < ActionController::Base
    layout 'site'

    def index
        
    end

    def about

    end

    def pca_message

    end

    def board_directors

    end

    def products
    end

    def members
        
    end

    def contact
        @contact_form = ContactForm.new
    end

    




end
