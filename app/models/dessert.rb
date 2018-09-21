class Dessert < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates_presence_of :name, :price, :amount, :location #設為必填
  belongs_to :user #seller
  has_many :orders, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :replies, dependent: :destroy
  belongs_to :category
end
