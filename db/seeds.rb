# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

conf_seeds = [
  {
    name: 'RubyConf',
    url: 'rubyconf',
    description: "A beautiful Ruby conference",
    start_date: Date.today + 100.days,
    end_date: Date.today + 103.days
  },

  {
    name: 'Wizards United',
    url: 'wizards-together',
    description: "Magic is in the air",
    start_date: Date.today + 200.days,
    end_date: Date.today + 203.days
  }
]

conf_seeds.each do |seed_values|
  Conference.create(seed_values)
end

events = [
  {
    name: "How great is Rails?",
    host: "Matz Himself",
    description: "Honestly it really is great. No questions. Also no answers. Yay!",
    location: "Second floor",
    conference_id: 1,
    event_type: "panel",
    starts_at: DateTime.now + 100.days + 2.hours,
    ends_at: DateTime.now + 100.days + 3.hours
  },

  {
    name: "Let's change Ruby's icon",
    host: "Weatherman",
    description: "Actually we like this one as is. But needed something to discuss.",
    location: "Lobby",
    conference_id: 1,
    event_type: "panel",
    starts_at: DateTime.now + 101.days + 2.hours,
    ends_at: DateTime.now + 101.days + 3.hours
  },

  {
    name: "Magic is Great",
    host: "MageLady",
    description: "Coding is kind of like magic, isn't it?",
    location: "First floor",
    conference_id: 2,
    event_type: "panel",
    starts_at: DateTime.now + 200.days + 2.hours,
    ends_at: DateTime.now + 200.days + 3.hours
  },

  {
    name: "Harry or Zelda?: Different forms of magic in fandoms",
    host: "PlayerOne",
    description: "Let's discuss this extensive and curious topic.",
    location: "Outside",
    conference_id: 2,
    event_type: "panel",
    starts_at: DateTime.now + 201.days + 2.hours,
    ends_at: DateTime.now + 201.days + 3.hours
  }
]

events.each do |event_values|
  Event.create(event_values)
end
