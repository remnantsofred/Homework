# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  body       :text             not null
#  author_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  validates :title, :body, presence: true

  belongs_to :author, class_name: "User"
  has_many :comments, dependent: :destroy

  def self.by_popularity
    self
      .select('posts.*, COUNT(*) AS comment_count')
      .joins(:comments)
      .group('posts.id')
      .order('comment_count DESC')
  end
end