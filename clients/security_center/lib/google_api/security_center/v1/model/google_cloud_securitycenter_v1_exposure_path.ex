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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposurePath do
  @moduledoc """
  A path that an attacker could take to reach an exposed resource.

  ## Attributes

  *   `edges` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Edge.t)`, *default:* `nil`) - A list of the edges between nodes in this exposure path.
  *   `exposedResource` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposedResource.t`, *default:* `nil`) - The leaf node of this exposure path.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Exposure Path Name e.g.: `organizations/123/attackExposureResults/456/exposurePaths/789`
  *   `pathNodes` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.PathNode.t)`, *default:* `nil`) - A list of nodes that exist in this exposure path.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :edges => list(GoogleApi.SecurityCenter.V1.Model.Edge.t()) | nil,
          :exposedResource =>
            GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposedResource.t() | nil,
          :name => String.t() | nil,
          :pathNodes => list(GoogleApi.SecurityCenter.V1.Model.PathNode.t()) | nil
        }

  field(:edges, as: GoogleApi.SecurityCenter.V1.Model.Edge, type: :list)

  field(:exposedResource,
    as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposedResource
  )

  field(:name)
  field(:pathNodes, as: GoogleApi.SecurityCenter.V1.Model.PathNode, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposurePath do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposurePath.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposurePath do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
