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

defmodule GoogleApi.DFAReporting.V35.Model.RichMediaExitOverride do
  @moduledoc """
  Rich Media Exit Override.

  ## Attributes

  *   `clickThroughUrl` (*type:* `GoogleApi.DFAReporting.V35.Model.ClickThroughUrl.t`, *default:* `nil`) - Click-through URL of this rich media exit override. Applicable if the enabled field is set to true.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Whether to use the clickThroughUrl. If false, the creative-level exit will be used.
  *   `exitId` (*type:* `String.t`, *default:* `nil`) - ID for the override to refer to a specific exit in the creative.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clickThroughUrl => GoogleApi.DFAReporting.V35.Model.ClickThroughUrl.t() | nil,
          :enabled => boolean() | nil,
          :exitId => String.t() | nil
        }

  field(:clickThroughUrl, as: GoogleApi.DFAReporting.V35.Model.ClickThroughUrl)
  field(:enabled)
  field(:exitId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.RichMediaExitOverride do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.RichMediaExitOverride.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.RichMediaExitOverride do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
