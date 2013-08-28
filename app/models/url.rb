class Url < ActiveRecord::Base
  before_save :generate_key
  validates :original_url, format: {with: /^[a-zA-Z0-9\-]+\.(com|org|net|mil|edu|COM|ORG|NET|MIL|EDU)$/}
  validates :original_url, presence: true

  def generate_key
    self.key = (0..9).map{(65+rand(26)).chr}.join.downcase
  end
end
