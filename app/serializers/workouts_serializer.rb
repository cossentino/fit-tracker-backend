class WorkoutsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :miles, :exert, :notes, :photos, :pace, :workout_type, :location

end