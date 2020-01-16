class Order < ApplicationRecord
	has_one :invoice
end
