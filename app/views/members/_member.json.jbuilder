json.extract! member, :id, :company_name, :company_nif, :company_address, :company_cell_phone, :company_email, :company_area, :company_logo, :pack_id, :name, :email, :cell_phone, :status, :created_at, :updated_at
json.url member_url(member, format: :json)
