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

defmodule GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TimeOfDay do
  @moduledoc """
  Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

  ## Attributes

  *   `hours` (*type:* `integer()`, *default:* `nil`) - Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  *   `minutes` (*type:* `integer()`, *default:* `nil`) - Minutes of hour of day. Must be from 0 to 59.
  *   `nanos` (*type:* `integer()`, *default:* `nil`) - Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  *   `seconds` (*type:* `integer()`, *default:* `nil`) - Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hours => integer() | nil,
          :minutes => integer() | nil,
          :nanos => integer() | nil,
          :seconds => integer() | nil
        }

  field(:hours)
  field(:minutes)
  field(:nanos)
  field(:seconds)
end

defimpl Poison.Decoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TimeOfDay do
  def decode(value, options) do
    GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TimeOfDay.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TimeOfDay do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
