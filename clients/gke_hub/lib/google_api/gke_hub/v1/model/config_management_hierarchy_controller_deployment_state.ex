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

defmodule GoogleApi.GKEHub.V1.Model.ConfigManagementHierarchyControllerDeploymentState do
  @moduledoc """
  Deployment state for Hierarchy Controller

  ## Attributes

  *   `extension` (*type:* `String.t`, *default:* `nil`) - The deployment state for Hierarchy Controller extension (e.g. v0.7.0-hc.1)
  *   `hnc` (*type:* `String.t`, *default:* `nil`) - The deployment state for open source HNC (e.g. v0.7.0-hc.0)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :extension => String.t() | nil,
          :hnc => String.t() | nil
        }

  field(:extension)
  field(:hnc)
end

defimpl Poison.Decoder,
  for: GoogleApi.GKEHub.V1.Model.ConfigManagementHierarchyControllerDeploymentState do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ConfigManagementHierarchyControllerDeploymentState.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.GKEHub.V1.Model.ConfigManagementHierarchyControllerDeploymentState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end