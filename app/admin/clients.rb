
ActiveAdmin.register Client do
  permit_params :name, :email, :phone

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :phone
    end
    f.actions
  end
end
