class Task < ActiveRecord::Base
  attr_accessible :description, :tags_text, :title



  #has_and_belongs_to_many :tags
  belongs_to :user
  has_many :tags

  after_save :create_tags

  def create_tags
    temp_tags_text = ""
    temp_tags_text = self.tags_text unless self.tags_text.blank?
    temp_tags_text.scan(/\B#([a-zA-Z ]+)/)
                  .map {|arrayed_tag| arrayed_tag.first.strip }
                  .each do |tag|
      self.tags << Tag.create(:name => tag)

    end
  end
end
