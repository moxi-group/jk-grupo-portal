class SiteController < ActionController::Base
    before_action :set_member, only: %i[ 
        member_details
     ]

    layout 'site'

    def index
        @members = Member.all
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


    def member_details
        
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
        def set_member
            @member = Member.friendly.find(params[:id])
        end



end
