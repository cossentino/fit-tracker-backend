class GoalsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :month, :sport, :user_id, :miles

end