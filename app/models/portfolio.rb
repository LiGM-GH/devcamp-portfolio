class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :angular, -> { where subtitle: 'Angular' }

  def self.rails
    where(subtitle: 'Ruby on Rails')
  end

  def set_defaults
    self.main_image  ||= 'https://dummyimage.com/1040x740/fff/aaa'
    self.thumb_image ||= 'https://dummyimage.com/350x200/fff/aaa' 
  end
  after_initialize :set_defaults
end
