# frozen_string_literal: true

describe ClimberCountController do
  describe 'GET Index' do
    let!(:climbers) { create :climber_count, created_at: Time.zone.today }

    let(:daily_graph_data) do
      { name: 'Daily Climbers',
        data: [[Time.zone.today, climbers.climber]] }
    end

    let(:weekly_graph_data) do
      { name: 'Weekly Climbers',
        data: [[Time.zone.today, climbers.climber]] }
    end

    it 'should assign the number of climbers' do
      get :index
      expect(assigns('current_climber_count')).to eq climbers.climber
    end

    it 'should assign the graph data' do
      get :index
      expect(assigns('daily_graph_data')[0]).to eq daily_graph_data
      expect(assigns('weekly_graph_data')[0]).to eq weekly_graph_data
    end
  end
end
