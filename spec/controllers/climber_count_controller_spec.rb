# frozen_string_literal: true

describe ClimberCountController do
  describe 'GET Index' do
    let!(:climbers) { create :climber_count, created_at: Date.today }
    let(:graph_data) do
      {
        name: "Climbers",
        data: [
          [ Date.today, climbers.climber ]
        ]
      }
    end
    
    it 'should assign the number of climbers' do
      get :index
      expect(assigns('current_climber_count')).to eq climbers
    end

    it 'should assign the graph data' do
      get :index
      expect(assigns('graph_data')[0]).to eq graph_data
    end
  end
end
