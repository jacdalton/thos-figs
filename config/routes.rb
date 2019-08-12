Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :otakus do
    resources :otaku_figs
  end

  # display all otakus
  # display individual otaku
  # on individual otaku page, display all anime figs belonging to otaku
  # add new anime fig to otaku
  # remove anime fig from otaku
  # deleting anime fig should not delete fig_type or otaku
  # display details of anime fig
end
