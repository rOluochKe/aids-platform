# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

volunteers = Volunteer.create([
  {
    id: 1,
    request_type: "Need",
    description: "Technology can be used in many ways",
    location: "Nairobi",
    latitude: 36.8219,
    longitude: 1.2921,
    status: "Fulfilled",
    request_due_date: "Fri, 18 Oct 2021",
    user_id: 1
  },
  {
    id: 2,
    request_type: "Task",
    description: "Technology can be used in many ways",
    location: "Nairobi",
    latitude: 36.8219,
    longitude: 1.2921,
    status: "Unfulfilled",
    request_due_date: "Tue, 18 Sept 2021",
    user_id: 2
  },
  {
    id: 2,
    request_type: "Need",
    description: "Technology can be used in many ways",
    location: "Nairobi",
    latitude: 36.8219,
    longitude: 1.2921,
    status: "Unfulfilled",
    request_due_date: "Mon, 23 July 2021",
    user_id: 2
  },
  {
    id: 1,
    request_type: "Task",
    description: "Technology can be used in many ways",
    location: "Nairobi",
    latitude: 36.8219,
    longitude: 1.2921,
    status: "Fulfilled",
    request_due_date: "Sat, 12 Aug 2021",
    user_id: 1
  }
])