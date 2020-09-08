defmodule ExTwilio.ProgrammableChat.UserChannel do
  @moduledoc """
  Represents a User Channel resource in the Twilio Programmable Chat API.

  - [Twilio docs](https://www.twilio.com/docs/api/chat/rest/user-channels)
  """

  defstruct account_sid: nil,
            service_sid: nil,
            channel_sid: nil,
            member_sid: nil,
            unread_messages_count: nil,
            last_consumed_message_index: nil,
            status: nil,
            notification_level: nil,
            url: nil,
            links: nil

  use ExTwilio.Resource,
    import: [
      :stream,
      :all
    ]

  def resource_name, do: "Channels"
  def resource_collection_name, do: "channels"

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.ProgrammableChat.Service, key: :service},
      %ExTwilio.Parent{module: ExTwilio.ProgrammableChat.User, key: :user}
    ]
end
