class Organization < ApplicationRecord
  validates :name, :slug, presense: true, uniqueness: true
  validates :domain, uniqueness: true
end
