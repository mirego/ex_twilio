defmodule ExTwilio.TaskRouter.WorkerChannel do
  @moduledoc """
  Represents a worker channel.

  - [Twilio docs](https://www.twilio.com/docs/taskrouter/api/worker-channel)
  """

  defstruct sid: nil,
            workspace_sid: nil,
            worker_sid: nil,
            configured_capacity: nil,
            task_channel_unique_name: nil,
            available: nil

  use ExTwilio.Resource, import: [:stream, :all, :update]

  def resource_name, do: "Channels"
  def resource_collection_name, do: "channels"

  def parents, do: [
    %ExTwilio.Parent{module: ExTwilio.TaskRouter.Workspace, key: :workspace},
    %ExTwilio.Parent{module: ExTwilio.TaskRouter.Worker, key: :worker}
  ]
end
