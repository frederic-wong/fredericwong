# frozen_string_literal: true

describe AvidScraper do
  let(:url) do
    'https://portal.rockgympro.com/portal/public/c517f311383a69209b2d00e4698bf8e7/occupancy?&iframeid=occupancyCounter&fId='
  end
  let(:body) do
    {
      parsed_response: "'count' : 20"
    }
  end

  before do
    stub_request(:get, url).to_return(status: 200, body: body.to_json)
  end

  it 'should add climbers to the database' do
    expect { described_class.go }.to change { ClimberCount.count }.by 1
  end
end
