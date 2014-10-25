ActiveAdmin.register Modelo do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :marca_id, :nombre
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
      f.inputs "Details" do
        f.input :segmento_id, :as => :select, :member_label => :nombre, :collection => Marca.all
        f.input :nombre
      end
      f.actions
    end

end
