class Profile < ApplicationRecord
  has_attached_file :pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :slide1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :slide2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :slide3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :slide4, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :slide5, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :slide1, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :slide2, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :slide3, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :slide4, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :slide5, content_type: /\Aimage\/.*\z/

  validates :greetings, :presence=>true
  validates :who_i_am, :presence=>true
  validates :footer, :presence=>true

end
