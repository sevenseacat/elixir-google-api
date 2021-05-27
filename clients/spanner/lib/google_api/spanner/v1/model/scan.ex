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

defmodule GoogleApi.Spanner.V1.Model.Scan do
  @moduledoc """
  Scan is a structure which describes Cloud Key Visualizer scan information.

  ## Attributes

  *   `details` (*type:* `map()`, *default:* `nil`) - Additional information provided by the implementer.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The upper bound for when the scan is defined.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique name of the scan, specific to the Database service implementing this interface.
  *   `scanData` (*type:* `GoogleApi.Spanner.V1.Model.ScanData.t`, *default:* `nil`) - Output only. Cloud Key Visualizer scan data. Note, this field is not available to the ListScans method.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - A range of time (inclusive) for when the scan is defined. The lower bound for when the scan is defined.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :details => map() | nil,
          :endTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :scanData => GoogleApi.Spanner.V1.Model.ScanData.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:details, type: :map)
  field(:endTime, as: DateTime)
  field(:name)
  field(:scanData, as: GoogleApi.Spanner.V1.Model.ScanData)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Scan do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.Scan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Scan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end