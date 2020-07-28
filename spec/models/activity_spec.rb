require 'rails_helper'

RSpec.describe Activity, type: :model do
  context 'validations tests' do
    it 'ensures the name is present' do
      activity = Activity.new(name: 'Running')
      expect(activity.valid?).to eq(false)
    end

    it 'ensures the date is present' do
      activity = Activity.new(date: '2020-07-28 00:00:00')
      expect(activity.valid?).to eq(false)
    end

    it 'ensures the duration is present' do
      activity = Activity.new(duration: 30)
      expect(activity.valid?).to eq(false)
    end
  end
end