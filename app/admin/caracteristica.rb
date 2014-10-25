ActiveAdmin.register Caracteristica do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :segmento_id, :tipo, :nombre
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
        f.input :segmento_id, :as => :select, :member_label => :nombre, :collection => Segmento.all
        f.input :tipo, :collection => ['equipamiento', 'seguridad', 'exterior']
        f.input :nombre
      end
      f.actions
    end


end
