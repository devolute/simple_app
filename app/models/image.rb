#attributes
# title:string

class Image < ActiveRecord::Base
  belongs_to :user

  has_attached_file :blob, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/missing.png"
  validates_attachment_content_type :blob, content_type: /\Aimage\/.*\z/
end
