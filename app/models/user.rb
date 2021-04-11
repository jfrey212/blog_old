class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_many :articles, -> { order 'published_at DESC, title ASC' },
                    dependent: :nullify
  has_many :replies, through: :articles, source: :comments
end
