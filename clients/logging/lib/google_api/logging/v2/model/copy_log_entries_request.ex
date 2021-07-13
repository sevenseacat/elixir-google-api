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

defmodule GoogleApi.Logging.V2.Model.CopyLogEntriesRequest do
  @moduledoc """
  The parameters to CopyLogEntries.

  ## Attributes

  *   `destination` (*type:* `String.t`, *default:* `nil`) - Required. Destination to which to copy logs.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Optional. A filter specifying which log entries to copy. The filter must be no more than 20k characters. An empty filter matches all log entries.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Bucket from which to copy logs. e.g. "projects/my-project/locations/my-location/buckets/my-source-bucket
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destination => String.t() | nil,
          :filter => String.t() | nil,
          :name => String.t() | nil
        }

  field(:destination)
  field(:filter)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.CopyLogEntriesRequest do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.CopyLogEntriesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.CopyLogEntriesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end