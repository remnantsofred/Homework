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

end
