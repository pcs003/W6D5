class CatRentalRequest < ApplicationRecord
    validates :status, inclusion: { in: %w(PENDING APPROVED DENIED)}
    validates :cat_id, :start_date, :end_date, presence: true

    belongs_to :cat,
        foreign_key: :cat_id,
        class_name: :Cat
end
