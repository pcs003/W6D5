class CatRentalRequest < ApplicationRecord
    validates :status, inclusion: { in: %w(PENDING APPROVED DENIED)}
    validates :cat_id, :start_date, :end_date, presence: true

    belongs_to :cat,
        foreign_key: :cat_id,
        class_name: :Cat

    def overlapping_requests
        CatRentalRequest.where(cat_id: cat_id).where.not("start_date > :end_date OR end_date < :start_date", start_date:start_date, end_date:end_date).where.not(id: self.id)
    end

    def overlapping_approved_requests
        overlapping_requests.where(status: 'APPROVED')
    end

    def does_not_overlap_approved_request
        !overlapping_approved_requests.exists?
    end
end
