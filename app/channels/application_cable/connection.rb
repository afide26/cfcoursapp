# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    def disconnect

    end

    protected

      def find_verified_user
        if verified_user = request.env['warden'].user
          verified_user
        else
          reject_unauthorized_connection
        end
      end
  end
end
