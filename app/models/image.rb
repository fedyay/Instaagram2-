class Image < ApplicationRecord
  belongs_to :user

  has_attached_file :photo,
                    styles: { medium: '600x600>', thumb: '100x100>'},
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :photo, 
                    content_type: ['image/jpeg', 'image/gif', 'image/png']
end
