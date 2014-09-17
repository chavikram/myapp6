class Product < ActiveRecord::Base
    has_many :properties
    accepts_nested_attributes_for :properties
end
