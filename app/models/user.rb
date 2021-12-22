class User < ApplicationRecord
  belongs_to :active
  
  after_create_commit { broadcast_prepend_to('users')}
  after_update_commit { broadcast_update_to('users') }
  after_update_commit { broadcast_prepend_to('users') }
  after_update_commit { broadcast_remove_to('users') }
  # broadcasts
end
