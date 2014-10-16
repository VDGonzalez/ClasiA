ActiveAdmin.register Agencia do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :nombre, :dpto_mendoza_id, :direccion, :telefono, :email, :web, :logo, :latitud, :longitud, :alta
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
      form do |f|
      f.inputs "Details" do
        f.input :nombre
        f.input :dpto_mendoza_id, :as => :select, :member_label => :nombre, :collection => DptoMendoza.all
        f.input :direccion
        f.input :telefono
        f.input :email
        f.input :web
        f.input :latitud
        f.input :longitud
        f.input :alta
        f.input :logo, :as => :file
      end
      f.actions
    end

end
