require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'validation tests' do

    it 'ensures name presence' do
      event = Event.new(description: Faker::Lorem.sentence, date: rand(DateTime.now..DateTime.now + 100.days), time: rand(Time.now..Time.now + 600.minutes)).save
      expect(event).to eq(false)
    end

    it 'ensures description presence' do
      event = Event.new(name: Faker::Esport.event, date: rand(DateTime.now..DateTime.now + 100.days), time: rand(Time.now..Time.now + 600.minutes)).save
      expect(event).to eq(false)
    end

    it 'ensures date presence' do
      event = Event.new(name: Faker::Esport.event, description: Faker::Lorem.sentence, time: rand(Time.now..Time.now + 600.minutes)).save
      expect(event).to eq(false)
    end

    it 'ensures time presence' do
      event = Event.new(name: Faker::Esport.event, description: Faker::Lorem.sentence, date: rand(DateTime.now..DateTime.now + 100.days)).save
      expect(event).to eq(false)
    end

    it 'should save successfully' do
      event = Event.new(name: Faker::Esport.event, description: Faker::Lorem.sentence, date: rand(DateTime.now..DateTime.now + 100.days), time: rand(Time.now..Time.now + 600.minutes)).save
      expect(event).to eq(true)
    end

  end

end
