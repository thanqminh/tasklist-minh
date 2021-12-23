class TodoSerializer < ApplicationSerializer
  attributes :id, :name, :done, :description
end