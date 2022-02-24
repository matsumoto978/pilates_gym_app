ActiveAdmin.register Post do
  permit_params :name, :content, :img, :ward, :URL, :TEL, :address, :user_id
end
