# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint           not null, primary key
#  cat_id     :bigint           not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'action_view'
class CatRentalRequest < ApplicationRecord
  include ActionView::Helpers::DateHelper
  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inclusion: {in: %w(PENDING, APPROVED, DENIED)}
  validate :does_not_overlap_approved_request

  belongs_to :cats,
    foreign_key: :cat_id,
    class_name: :Cat

  def overlapping_requests
    @overlapping_requests = CatRentalRequest.where(cat_id: params[:cat_id]).order(:start_date).where.not(id: pararms[:id]).where.not('self.start_date > end_date OR self.end_date < start_date')
  end

  def overlapping_approved_requests
    @overlapping_approved_requests = overlapping_requests.where(status: 'APPROVED')
  end

  def does_not_overlap_approved_request
    if overlapping_approved_requests.exists?
      errors.add(:status, "can't have overlapping approved requests")
    end
  end

  private
  def cat_rental_request_params
    params.require(cat_rental_request).permit(:cat_id, :start_date, :end_date, :status)
  end

end
