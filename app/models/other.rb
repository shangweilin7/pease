class Other < ApplicationRecord
  belongs_to :will
  has_many :heirs , :dependent => :destroy
end