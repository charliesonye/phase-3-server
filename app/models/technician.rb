class Technician < ActiveRecord::Base
    has_many :customers
end