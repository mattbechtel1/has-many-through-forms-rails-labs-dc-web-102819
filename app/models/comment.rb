class Comment < ActiveRecord::Base
  belongs_to :user
  accepts_nested_attributes_for :user, reject_if: :all_blank
  belongs_to :post

  # def not_new(attributes)
  #   byebug
  #   attributes[:username].value.blank?
  # end

  # def user_attributes=(user_attributes)
  #   new_user = User.find_or_create_by(user_attributes)
  #   byebug
  #   self.user = new_user
  # end


end
