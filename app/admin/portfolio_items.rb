ActiveAdmin.register PortfolioItem do
  # Allow all actions (create, read, update, delete)
  
  config.filters = false

  actions :all

  # Define permitted parameters for create/update
  permit_params :title, :category, :thumbnail, :image, :link

  # Define the fields to display in the index page
  index do
    selectable_column
    id_column
    column :title
    column :category
    column :thumbnail do |item|
      if item.thumbnail.attached?
        image_tag url_for(item.thumbnail), width: 50
      else
        "No thumbnail"
      end
    end
    column :image do |item|
      if item.image.attached?
        image_tag url_for(item.image), width: 50
      else
        "No image"
      end
    end
    column :link
    actions
  end

  # Define the form for creating/editing a PortfolioItem
  form do |f|
    f.inputs 'Portfolio Item Details' do
      f.input :title
      f.input :category
      f.input :thumbnail, as: :file
      f.input :image, as: :file
      f.input :link
    end
    f.actions
  end
end