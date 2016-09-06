class Blog < ApplicationRecord
  has_attached_file :coverpic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :coverpic, content_type: /\Aimage\/.*\z/

  validates :title, :presence=>true, length: { in: 4..200 }

  def self.recent(number=0)
    result_set = order('id DESC')
    result_set.first(number) if number > 0
    return result_set
  end
end
