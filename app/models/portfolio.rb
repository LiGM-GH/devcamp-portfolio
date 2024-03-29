# frozen_string_literal: true

class Portfolio < ApplicationRecord
  include Placeholder

  validates_presence_of :title, :body, :main_image, :thumb_image
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: ->(attrs) { attrs['name'].blank? }

  scope :angular, -> { where subtitle: 'Angular' }

  def self.rails
    where(subtitle: 'Ruby on Rails')
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image  ||= Placeholder.generate_image(width: 600, height: 400)
    self.thumb_image ||= Placeholder.generate_image(width: 350, height: 200)
  end
end
