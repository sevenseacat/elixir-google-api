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

defmodule GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse do
  @moduledoc """
  Response message for the BatchGetDeviceCheckConfigs method.

  ## Attributes

  *   `configs` (*type:* `list(GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaDeviceCheckConfig.t)`, *default:* `nil`) - DeviceCheckConfigs retrieved.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configs =>
            list(
              GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaDeviceCheckConfig.t()
            )
            | nil
        }

  field(:configs,
    as: GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaDeviceCheckConfig,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse do
  def decode(value, options) do
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
