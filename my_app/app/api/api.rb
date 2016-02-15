class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  mount Institution::Info
  mount Person::Info
end