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

defmodule GoogleApi.Redis.V1beta1.Model.TlsCertificate do
  @moduledoc """
  TlsCertificate Resource

  ## Attributes

  *   `cert` (*type:* `String.t`, *default:* `nil`) - PEM representation.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - Serial number, as extracted from the certificate.
  *   `sha1Fingerprint` (*type:* `String.t`, *default:* `nil`) - Sha1 Fingerprint of the certificate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cert => String.t(),
          :createTime => DateTime.t(),
          :expireTime => DateTime.t(),
          :serialNumber => String.t(),
          :sha1Fingerprint => String.t()
        }

  field(:cert)
  field(:createTime, as: DateTime)
  field(:expireTime, as: DateTime)
  field(:serialNumber)
  field(:sha1Fingerprint)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.TlsCertificate do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.TlsCertificate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.TlsCertificate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end