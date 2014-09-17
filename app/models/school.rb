class School < ActiveRecord::Base
    
    has_many :fees
    has_many :addresses
    has_many :boards
    accepts_nested_attributes_for :addresses
    accepts_nested_attributes_for :fees
    
    validates_format_of :name, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/   
    validates_numericality_of :established_in,  :greater_than=>1970, :less_than => 2050
        
end
