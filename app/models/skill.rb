# frozen_string_literal: true

##
# Skill
class Skill < ApplicationRecord
  include Placeholder

  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.generate_image(height: 250, width: 250)
  end
end
