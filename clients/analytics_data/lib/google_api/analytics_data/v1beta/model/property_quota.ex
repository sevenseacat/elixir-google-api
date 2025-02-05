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

defmodule GoogleApi.AnalyticsData.V1beta.Model.PropertyQuota do
  @moduledoc """
  Current state of all quotas for this Analytics Property. If any quota for a property is exhausted, all requests to that property will return Resource Exhausted errors.

  ## Attributes

  *   `concurrentRequests` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t`, *default:* `nil`) - Standard Analytics Properties can send up to 10 concurrent requests; Analytics 360 Properties can use up to 50 concurrent requests.
  *   `potentiallyThresholdedRequestsPerHour` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t`, *default:* `nil`) - Analytics Properties can send up to 120 requests with potentially thresholded dimensions per hour. In a batch request, each report request is individually counted for this quota if the request contains potentially thresholded dimensions.
  *   `serverErrorsPerProjectPerHour` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t`, *default:* `nil`) - Standard Analytics Properties and cloud project pairs can have up to 10 server errors per hour; Analytics 360 Properties and cloud project pairs can have up to 50 server errors per hour.
  *   `tokensPerDay` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t`, *default:* `nil`) - Standard Analytics Properties can use up to 25,000 tokens per day; Analytics 360 Properties can use 250,000 tokens per day. Most requests consume fewer than 10 tokens.
  *   `tokensPerHour` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t`, *default:* `nil`) - Standard Analytics Properties can use up to 5,000 tokens per hour; Analytics 360 Properties can use 50,000 tokens per hour. An API request consumes a single number of tokens, and that number is deducted from all of the hourly, daily, and per project hourly quotas.
  *   `tokensPerProjectPerHour` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t`, *default:* `nil`) - Analytics Properties can use up to 25% of their tokens per project per hour. This amounts to standard Analytics Properties can use up to 1,250 tokens per project per hour, and Analytics 360 Properties can use 12,500 tokens per project per hour. An API request consumes a single number of tokens, and that number is deducted from all of the hourly, daily, and per project hourly quotas.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :concurrentRequests => GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t() | nil,
          :potentiallyThresholdedRequestsPerHour =>
            GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t() | nil,
          :serverErrorsPerProjectPerHour =>
            GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t() | nil,
          :tokensPerDay => GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t() | nil,
          :tokensPerHour => GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t() | nil,
          :tokensPerProjectPerHour => GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus.t() | nil
        }

  field(:concurrentRequests, as: GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus)

  field(:potentiallyThresholdedRequestsPerHour,
    as: GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus
  )

  field(:serverErrorsPerProjectPerHour, as: GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus)
  field(:tokensPerDay, as: GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus)
  field(:tokensPerHour, as: GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus)
  field(:tokensPerProjectPerHour, as: GoogleApi.AnalyticsData.V1beta.Model.QuotaStatus)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.PropertyQuota do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.PropertyQuota.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.PropertyQuota do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
