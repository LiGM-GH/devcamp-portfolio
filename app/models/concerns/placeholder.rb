# frozen_string_literal: true

##
# Manages all the placeholders (default values) for models
module Placeholder
  extend ActiveSupport::Concern

  def self.generate_image(height:, width:)
    "https://dummyimage.com/#{height}x#{width}/fff/aaa"
  end
end
