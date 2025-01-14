Rails.application.routes.draw do
  resources :lists do
    resources :items, only: [:create, :edit, :update, :destroy] do
      member do
        patch :toggle_status  # Define a rota para uma ação de membro de `Item`
      end
    end
  end
end
