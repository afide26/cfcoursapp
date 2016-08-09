// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the rails generate channel command.
//
//= require action_cable
//= require_self
//= require_tree ./channels

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();

}).call(this);
/app/channels/application_cable/channel.rb and add this content:
module ApplicationCable
  class Channel < ActionCable::Channel::Base
  end
end
/app/channels/application_cable/connection.rb and add this content:
module ApplicationCable
  class Connection < ActionCable::Connection::Base
  end
end
/app/jobs/application_job.rb and add this content:
class ApplicationJob < ActiveJob::Base
end