# frozen_string_literal: true

describe TheGymScraper do
  let(:url) do
    'https://www.thegymgroup.com/BranchGymBusynessBlock/GetBusynessForBranch/?branchId=8e22edc4-2df5-4012-8fc9-8b622bef1a25&configurationId=0749f44e-4aa9-495d-a37a-d84a36d4b999'
  end
  let(:body) do
    {
      currentBranch: {
        capacity: '1'
      }
    }
  end

  before do
    stub_request(:get, url).to_return(status: 200, body: body.to_json)
  end

  it 'should add climbers to the database' do
    expect { described_class.go }.to change { TheGymCount.count }.by 1
  end
end
