# frozen_string_literal: true

describe TheGymCountController do
  describe 'GET Index' do
    let!(:gymers) { create :the_gym_count, created_at: Time.zone.today }

    let(:daily_graph_data) do
      { name: 'Daily Gym goers',
        data: [[Time.zone.today, gymers.gymer]] }
    end

    let(:weekly_graph_data) do
      { name: 'Weekly Gym goers',
        data: [[Time.zone.today, gymers.gymer]] }
    end

    it 'should assign the number of gymers' do
      get :index
      expect(assigns('current_gym_count')).to eq gymers.gymer
    end

    it 'should assign the graph data' do
      get :index
      expect(assigns('daily_graph_data')[0]).to eq daily_graph_data
      expect(assigns('weekly_graph_data')[0]).to eq weekly_graph_data
    end
  end
end
