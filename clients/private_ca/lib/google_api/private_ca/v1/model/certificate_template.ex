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

defmodule GoogleApi.PrivateCA.V1.Model.CertificateTemplate do
  @moduledoc """
  A CertificateTemplate refers to a managed template for certificate issuance.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this CertificateTemplate was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A human-readable description of scenarios this template is intended for.
  *   `identityConstraints` (*type:* `GoogleApi.PrivateCA.V1.Model.CertificateIdentityConstraints.t`, *default:* `nil`) - Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Labels with user-defined metadata.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  *   `passthroughExtensions` (*type:* `GoogleApi.PrivateCA.V1.Model.CertificateExtensionConstraints.t`, *default:* `nil`) - Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  *   `predefinedValues` (*type:* `GoogleApi.PrivateCA.V1.Model.X509Parameters.t`, *default:* `nil`) - Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this CertificateTemplate was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :identityConstraints =>
            GoogleApi.PrivateCA.V1.Model.CertificateIdentityConstraints.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :passthroughExtensions =>
            GoogleApi.PrivateCA.V1.Model.CertificateExtensionConstraints.t() | nil,
          :predefinedValues => GoogleApi.PrivateCA.V1.Model.X509Parameters.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:identityConstraints, as: GoogleApi.PrivateCA.V1.Model.CertificateIdentityConstraints)
  field(:labels, type: :map)
  field(:name)
  field(:passthroughExtensions, as: GoogleApi.PrivateCA.V1.Model.CertificateExtensionConstraints)
  field(:predefinedValues, as: GoogleApi.PrivateCA.V1.Model.X509Parameters)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1.Model.CertificateTemplate do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1.Model.CertificateTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1.Model.CertificateTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
