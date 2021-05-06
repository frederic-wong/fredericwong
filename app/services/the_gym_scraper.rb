require 'httparty'

class TheGymScraper
  def self.go
    url = 'https://www.thegymgroup.com/BranchGymBusynessBlock/GetBusynessForBranch/?branchId=8e22edc4-2df5-4012-8fc9-8b622bef1a25&configurationId=0749f44e-4aa9-495d-a37a-d84a36d4b999'
    response = HTTParty.get(url)
    capacity = response['currentBranch']['capacity'].to_i

    TheGymCount.create(gymer: capacity)
  end
end
