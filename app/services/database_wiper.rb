class DatabaseWiper
  def self.go
    ClimberCount.where('created_at < ? ', 2.weeks.ago).delete_all
    TheGymCount.where('created_at < ? ', 2.weeks.ago).delete_all
  end
end
