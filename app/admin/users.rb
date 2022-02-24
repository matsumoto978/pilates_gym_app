ActiveAdmin.register User do
  permit_params :name, :email, :password, :password_confirmation, :introduction, :img
  
end
