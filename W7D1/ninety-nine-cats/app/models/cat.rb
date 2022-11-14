# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'
class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  COLORS = ['black', 'white', 'orange', 'gray', 'multi-colored', 'pink', 'brown']
  SEX = ['F', 'M']
  validates :birth_date, :color, :name, :sex, presence: { message: "must be given" }
  validates :color, inclusion: {in: COLORS}
  validates :sex, inclusion: {in: SEX}
  validate :birth_date_cannot_be_future

  def birth_date_cannot_be_future
    if birth_date.present? && birth_date > Date.today
      errors.add(birth_date, 'can\'t be in the future')
    end
  end

  def age
    time_ago_in_words(birth_date)
  end

  has_many :cat_rental_requests,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy

end
