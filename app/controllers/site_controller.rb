class SiteController < ActionController::Base
    before_action :set_member, only: %i[ 
        member_details
     ]


     before_action :set_product, only: %i[ 
        product_detail
     ]

    layout 'site'

    def index
        @partners = Partner.all
        @members = Member.all
    end

    def about

    end

    def pca_message

    end

    def board_directors

    end

    def all_products
        @products = Product.all
    end

    def product_detail
        
    end

    


    def members
        
    end

    def contact
        @contact_form = ContactForm.new
    end


    def member_details
        
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
        def set_member
            @member = Member.friendly.find(params[:id])
        end

        def set_product
            @product = Product.friendly.find(params[:id])
        end

end
