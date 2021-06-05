class DatabaseCleaner
  def self.go
    ClimberCount.where("created_at < ? ", 2.week.ago).delete_all
    TheGymCount.where("created_at < ? ", 2.week.ago).delete_all
  end
end
