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

defmodule GoogleApi.AnalyticsData.V1beta.Model.ResponseMetaData do
  @moduledoc """
  Response's metadata carrying additional information about the report content.

  ## Attributes

  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - The currency code used in this report. Intended to be used in formatting currency metrics like `purchaseRevenue` for visualization. If currency_code was specified in the request, this response parameter will echo the request parameter; otherwise, this response parameter is the property's current currency_code. Currency codes are string encodings of currency types from the ISO 4217 standard (https://en.wikipedia.org/wiki/ISO_4217); for example "USD", "EUR", "JPY". To learn more, see https://support.google.com/analytics/answer/9796179.
  *   `dataLossFromOtherRow` (*type:* `boolean()`, *default:* `nil`) - If true, indicates some buckets of dimension combinations are rolled into "(other)" row. This can happen for high cardinality reports.
  *   `emptyReason` (*type:* `String.t`, *default:* `nil`) - If empty reason is specified, the report is empty for this reason.
  *   `schemaRestrictionResponse` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.SchemaRestrictionResponse.t`, *default:* `nil`) - Describes the schema restrictions actively enforced in creating this report. To learn more, see [Access and data-restriction management](https://support.google.com/analytics/answer/10851388).
  *   `thresholdingApplied` (*type:* `boolean()`, *default:* `nil`) - If `thresholdingApplied` is true, this report has thresholding applied and only returns data that meets the minimum aggregation thresholds. This boolean only indicates if thresholding was applied. It is possible for thresholding to be applied and no data is absent from the report, and this happens when all data is above the thresholds. To learn more, see [Data thresholds](https://support.google.com/analytics/answer/9383630) and [About Demographics and Interests](https://support.google.com/analytics/answer/2799357).
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The property's current timezone. Intended to be used to interpret time-based dimensions like `hour` and `minute`. Formatted as strings from the IANA Time Zone database (https://www.iana.org/time-zones); for example "America/New_York" or "Asia/Tokyo".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currencyCode => String.t() | nil,
          :dataLossFromOtherRow => boolean() | nil,
          :emptyReason => String.t() | nil,
          :schemaRestrictionResponse =>
            GoogleApi.AnalyticsData.V1beta.Model.SchemaRestrictionResponse.t() | nil,
          :thresholdingApplied => boolean() | nil,
          :timeZone => String.t() | nil
        }

  field(:currencyCode)
  field(:dataLossFromOtherRow)
  field(:emptyReason)

  field(:schemaRestrictionResponse,
    as: GoogleApi.AnalyticsData.V1beta.Model.SchemaRestrictionResponse
  )

  field(:thresholdingApplied)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.ResponseMetaData do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.ResponseMetaData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.ResponseMetaData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end