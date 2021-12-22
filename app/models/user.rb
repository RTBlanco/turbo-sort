class User < ApplicationRecord
  after_create_commit { broadcast_prepend_to('users')}
  after_update_commit { broadcast_update_to('users') }
  # broadcasts
end
