class DashboardController < ApplicationController
  def index
    @membros = Member.all
    @contacts = ContactForm.all
    @partners = Partner.all

    
  end
end
