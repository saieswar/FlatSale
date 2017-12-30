class FlatBooking < ApplicationRecord
  validates :agreement_amount, presence: true
  validates :base_price, presence: true
  validates :date_of_booking, presence: true
  validates :area, presence: true
  REPORTTYPES = ["Month", "Year"]
  scope :sales_report, -> (start_date, end_date) { where(date_of_booking: start_date.to_date.beginning_of_day .. end_date.to_date.end_of_day).group(:date_of_booking).sum('agreement_amount') }
end

