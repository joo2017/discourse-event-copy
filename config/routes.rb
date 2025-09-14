# frozen_string_literal: true

Discourse::Application.routes.draw do
  get "/upcoming-events" => "application#index"
  get "/upcoming-events/mine" => "application#index"
end
