ActiveAdmin.register Comment, as: "PostComment" do
  permit_params :user_id, :post_id, :content

  index do
    selectable_column
    id_column
    column :user_id
    column :post_id
    column :content
    actions
  end
end
