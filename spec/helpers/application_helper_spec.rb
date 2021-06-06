# frozen_string_literal: true

describe ApplicationHelper do
  describe '.define_color' do
    context 'when green' do
      let(:count) { 1 }

      it 'should return green' do
        expect(define_color(count)).to eq 'green'
      end
    end

    context 'when orange' do
      let(:count) { 30 }

      it 'should return orange' do
        expect(define_color(count)).to eq 'orange'
      end
    end

    context 'when red' do
      let(:count) { 100 }

      it 'should return red' do
        expect(define_color(count)).to eq 'red'
      end
    end
  end
end
