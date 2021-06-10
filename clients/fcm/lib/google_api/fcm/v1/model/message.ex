# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.FCM.V1.Model.Message do
  @moduledoc """
  Message to send by Firebase Cloud Messaging Service.

  ## Attributes

  *   `android` (*type:* `GoogleApi.FCM.V1.Model.AndroidConfig.t`, *default:* `nil`) - Input only. Android specific options for messages sent through [FCM connection server](https://goo.gl/4GLdUl).
  *   `apns` (*type:* `GoogleApi.FCM.V1.Model.ApnsConfig.t`, *default:* `nil`) - Input only. [Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.
  *   `condition` (*type:* `String.t`, *default:* `nil`) - Condition to send a message to, e.g. "'foo' in topics && 'bar' in topics".
  *   `data` (*type:* `map()`, *default:* `nil`) - Input only. Arbitrary key/value payload, which must be UTF-8 encoded. The key should not be a reserved word ("from", "message_type", or any word starting with "google" or "gcm"). When sending payloads containing only data fields to iOS devices, only normal priority (`"apns-priority": "5"`) is allowed in [`ApnsConfig`](/docs/reference/fcm/rest/v1/projects.messages#apnsconfig).
  *   `fcmOptions` (*type:* `GoogleApi.FCM.V1.Model.FcmOptions.t`, *default:* `nil`) - Input only. Template for FCM SDK feature options to use across all platforms.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output Only. The identifier of the message sent, in the format of `projects/*/messages/{message_id}`.
  *   `notification` (*type:* `GoogleApi.FCM.V1.Model.Notification.t`, *default:* `nil`) - Input only. Basic notification template to use across all platforms.
  *   `token` (*type:* `String.t`, *default:* `nil`) - Registration token to send a message to.
  *   `topic` (*type:* `String.t`, *default:* `nil`) - Topic name to send a message to, e.g. "weather". Note: "/topics/" prefix should not be provided.
  *   `webpush` (*type:* `GoogleApi.FCM.V1.Model.WebpushConfig.t`, *default:* `nil`) - Input only. [Webpush protocol](https://tools.ietf.org/html/rfc8030) options.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :android => GoogleApi.FCM.V1.Model.AndroidConfig.t() | nil,
          :apns => GoogleApi.FCM.V1.Model.ApnsConfig.t() | nil,
          :condition => String.t() | nil,
          :data => map() | nil,
          :fcmOptions => GoogleApi.FCM.V1.Model.FcmOptions.t() | nil,
          :name => String.t() | nil,
          :notification => GoogleApi.FCM.V1.Model.Notification.t() | nil,
          :token => String.t() | nil,
          :topic => String.t() | nil,
          :webpush => GoogleApi.FCM.V1.Model.WebpushConfig.t() | nil
        }

  field(:android, as: GoogleApi.FCM.V1.Model.AndroidConfig)
  field(:apns, as: GoogleApi.FCM.V1.Model.ApnsConfig)
  field(:condition)
  field(:data, type: :map)
  field(:fcmOptions, as: GoogleApi.FCM.V1.Model.FcmOptions)
  field(:name)
  field(:notification, as: GoogleApi.FCM.V1.Model.Notification)
  field(:token)
  field(:topic)
  field(:webpush, as: GoogleApi.FCM.V1.Model.WebpushConfig)
end

defimpl Poison.Decoder, for: GoogleApi.FCM.V1.Model.Message do
  def decode(value, options) do
    GoogleApi.FCM.V1.Model.Message.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FCM.V1.Model.Message do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
