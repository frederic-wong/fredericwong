# frozen_string_literal: true

describe TheGymCountController do
  describe 'GET Index' do
    let!(:gymers) { create :the_gym_count, created_at: Date.today }
    let(:graph_data) do
      {
        name: "Gym goers",
        data: [
          [ Date.today, gymers.gymer ]
        ]
      }
    end
    
    it 'should assign the number of gymers' do
      get :index
      expect(assigns('current_gym_count')).to eq gymers
    end

    it 'should assign the graph data' do
      get :index
      expect(assigns('graph_data')[0]).to eq graph_data
    end
  end
end
