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

defmodule GoogleApi.AlertCenter.V1beta1.Model.AppsOutage do
  @moduledoc """
  An outage incident reported for a Google Workspace service.

  ## Attributes

  *   `dashboardUri` (*type:* `String.t`, *default:* `nil`) - Link to the outage event in Google Workspace Status Dashboard
  *   `nextUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp by which the next update is expected to arrive.
  *   `products` (*type:* `list(String.t)`, *default:* `nil`) - List of products impacted by the outage.
  *   `resolutionTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp when the outage is expected to be resolved, or has confirmed resolution. Provided only when known.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Current outage status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dashboardUri => String.t() | nil,
          :nextUpdateTime => DateTime.t() | nil,
          :products => list(String.t()) | nil,
          :resolutionTime => DateTime.t() | nil,
          :status => String.t() | nil
        }

  field(:dashboardUri)
  field(:nextUpdateTime, as: DateTime)
  field(:products, type: :list)
  field(:resolutionTime, as: DateTime)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.AppsOutage do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.AppsOutage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.AppsOutage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end