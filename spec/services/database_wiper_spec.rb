# frozen_string_literal: true

describe DatabaseWiper do
  context 'when climber count' do
    before do
      create :climber_count, created_at: 3.weeks.ago
    end

    it 'should delete climbers from the database from more than 2 weeks ago' do
      expect { described_class.go }.to change { ClimberCount.count }.from(1).to(0)
    end
  end
end
