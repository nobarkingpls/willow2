class Advisory < ApplicationRecord
  belongs_to :movie
  belongs_to :reason

  validates_uniqueness_of :movie_id, scope: :reason_id

  def reason_code
    reason && reason.code
  end

  def reason_code=(code)
    self.reason = Reason.find_or_create_by(code: code) unless code.blank?
  end
end
