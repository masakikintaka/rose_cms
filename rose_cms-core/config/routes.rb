RoseCms::Core::Engine.add_routes do
  root to: 'application#hello'
  get 'hoge', to: 'application#hello'
end

RoseCms::Core::Engine.draw_routes
