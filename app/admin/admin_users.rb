ActiveAdmin.register AdminUser do

  index do
    column :email
    default_actions
  end


  form do |f|
      f.inputs "Details" do
        f.input :email
        f.input :password
      	f.input :password_confirmation
      end
      f.buttons
  end

end
