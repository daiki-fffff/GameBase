class Impression < ApplicationRecord
  # textの文字数は、1文字から1000文字まで
  validates :text,
  length: { minimum: 1, maximum: 1000 }
end
