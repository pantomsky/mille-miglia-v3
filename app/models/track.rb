class Track < ApplicationRecord
  belongs_to :driver

  validates :driver, presence:true
  validates :start, :destination, presence: { message: "Objekt jest pusty" }, length: { minimum: 2 } # :column_name, method: argument
  validates :distance, numericality: { greater_than: 0, message: "Dystans musi być większy od ZERA" }
  validates :date, presence: { message: "Objekt jest pusty" }

  validate :date_cannot_be_in_the_future

  def date_cannot_be_in_the_future
    if date.present? && date > Date.today
      errors.add(:date, "Nie można wpisać podróży z przyszłości")
    end
  end

end
