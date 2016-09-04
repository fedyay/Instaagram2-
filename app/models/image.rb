class Image < ApplicationRecord
  belongs_to :user
  has_many :comments
  acts_as_votable

  has_attached_file :photo,
                    styles: { large: '500x500', medium: '300x300', thumb: '100x100'},
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :photo, 
                    content_type: ['image/jpeg', 'image/gif', 'image/png']
end
