class TargetGroup < ApplicationRecord
  has_many :countries
  belongs_to :parent, class_name: 'TargetGroup'
  has_many :children, class_name: 'TargetGroup', foreign_key: 'parent_id'
end
