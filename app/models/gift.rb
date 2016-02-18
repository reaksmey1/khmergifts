class Gift < ActiveRecord::Base
	validates_presence_of :name
	has_attached_file :source_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :source_image, content_type: /\Aimage\/.*\Z/
end
