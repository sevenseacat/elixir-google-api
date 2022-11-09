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

defmodule GoogleApi.Content.V21.Model.DatafeedstatusesCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch datafeedstatuses request.

  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `country` (*type:* `String.t`, *default:* `nil`) - Deprecated. Use `feedLabel` instead. The country to get the datafeed status for. If this parameter is provided, then `language` must also be provided. Note that for multi-target datafeeds this parameter is required.
  *   `datafeedId` (*type:* `String.t`, *default:* `nil`) - The ID of the data feed to get.
  *   `feedLabel` (*type:* `String.t`, *default:* `nil`) - The feed label to get the datafeed status for. If this parameter is provided, then `language` must also be provided. Note that for multi-target datafeeds this parameter is required.
  *   `language` (*type:* `String.t`, *default:* `nil`) - The language to get the datafeed status for. If this parameter is provided then `country` must also be provided. Note that for multi-target datafeeds this parameter is required.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the managing account.
  *   `method` (*type:* `String.t`, *default:* `nil`) - The method of the batch entry. Acceptable values are: - "`get`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer() | nil,
          :country => String.t() | nil,
          :datafeedId => String.t() | nil,
          :feedLabel => String.t() | nil,
          :language => String.t() | nil,
          :merchantId => String.t() | nil,
          :method => String.t() | nil
        }

  field(:batchId)
  field(:country)
  field(:datafeedId)
  field(:feedLabel)
  field(:language)
  field(:merchantId)
  field(:method)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.DatafeedstatusesCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.DatafeedstatusesCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.DatafeedstatusesCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
