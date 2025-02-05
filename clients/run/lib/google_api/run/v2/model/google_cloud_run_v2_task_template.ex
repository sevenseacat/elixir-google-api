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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskTemplate do
  @moduledoc """
  TaskTemplate describes the data a task should have when created from a template.

  ## Attributes

  *   `containers` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Container.t)`, *default:* `nil`) - Holds the single container that defines the unit of execution for this task.
  *   `encryptionKey` (*type:* `String.t`, *default:* `nil`) - A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  *   `executionEnvironment` (*type:* `String.t`, *default:* `nil`) - The execution environment being used to host this Task.
  *   `maxRetries` (*type:* `integer()`, *default:* `nil`) - Number of retries allowed per Task, before marking this Task failed.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.
  *   `volumes` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume.t)`, *default:* `nil`) - A list of Volumes to make available to containers.
  *   `vpcAccess` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess.t`, *default:* `nil`) - VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containers => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Container.t()) | nil,
          :encryptionKey => String.t() | nil,
          :executionEnvironment => String.t() | nil,
          :maxRetries => integer() | nil,
          :serviceAccount => String.t() | nil,
          :timeout => String.t() | nil,
          :volumes => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume.t()) | nil,
          :vpcAccess => GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess.t() | nil
        }

  field(:containers, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Container, type: :list)
  field(:encryptionKey)
  field(:executionEnvironment)
  field(:maxRetries)
  field(:serviceAccount)
  field(:timeout)
  field(:volumes, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume, type: :list)
  field(:vpcAccess, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskTemplate do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
