class User < ApplicationRecord
  enum state: { available: 1, deleted: 0 }
end
