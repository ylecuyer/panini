class Car < ActiveRecord::Base
  has_attached_file :picture, styles: { large:"900x675x", thumb: "300x225>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end
