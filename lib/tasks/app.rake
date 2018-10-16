# frozen_string_literal: true

task 'start' => :environment do
  system 'rails server -p 3001'
end
