class LockScreenMessages::Profile
    class Error < StandardError; end
  
    def self.generate
      groups_with_messages = Group
        .select(:id, :name, :lock_screen_message, :account_id)
        .includes(:account)
        .where.not(lock_screen_message: nil)
  
      groups_with_messages.find_each do |group|
        account = group.account
  
        next if account.subscription.closed?
  
        lsm = LockScreenMessage.new(
          name: "Lock Screen Message - #{group.name}",
          account_id: account.id,
          message: group.lock_screen_message
        )
  
        if lsm.save
          ProfileService::Assignment.assign_profile(group, lsm)
        else
          raise Error, "Failed to create LockScreenMessage for Group #{group.id}"
        end
      end
    end
  end
  