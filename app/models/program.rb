class Program < ApplicationRecord
	has_many :exercises, dependent: :destroy
end
