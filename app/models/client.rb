class Client < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        %w[name email phone created_at]
      end
end
