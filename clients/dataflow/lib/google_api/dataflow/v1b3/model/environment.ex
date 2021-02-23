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

defmodule GoogleApi.Dataflow.V1b3.Model.Environment do
  @moduledoc """
  Describes the environment in which a Dataflow Job runs.

  ## Attributes

  *   `clusterManagerApiService` (*type:* `String.t`, *default:* `nil`) - The type of cluster manager API to use. If unknown or unspecified, the service will attempt to choose a reasonable default. This should be in the form of the API service name, e.g. "compute.googleapis.com".
  *   `dataset` (*type:* `String.t`, *default:* `nil`) - The dataset for the current project where various workflow related tables are stored. The supported resource type is: Google BigQuery: bigquery.googleapis.com/{dataset}
  *   `experiments` (*type:* `list(String.t)`, *default:* `nil`) - The list of experiments to enable. This field should be used for SDK related experiments and not for service related experiments. The proper field for service related experiments is service_options. For more details see the rationale at go/user-specified-service-options.
  *   `flexResourceSchedulingGoal` (*type:* `String.t`, *default:* `nil`) - Which Flexible Resource Scheduling mode to run in.
  *   `internalExperiments` (*type:* `map()`, *default:* `nil`) - Experimental settings.
  *   `sdkPipelineOptions` (*type:* `map()`, *default:* `nil`) - The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through the service and are used to recreate the SDK pipeline options on the worker in a language agnostic and platform independent way.
  *   `serviceAccountEmail` (*type:* `String.t`, *default:* `nil`) - Identity to run virtual machines as. Defaults to the default account.
  *   `serviceKmsKeyName` (*type:* `String.t`, *default:* `nil`) - If set, contains the Cloud KMS key identifier used to encrypt data at rest, AKA a Customer Managed Encryption Key (CMEK). Format: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
  *   `serviceOptions` (*type:* `list(String.t)`, *default:* `nil`) - The list of service options to enable. This field should be used for service related experiments only. These experiments, when graduating to GA, should be replaced by dedicated fields or become default (i.e. always on). For more details see the rationale at go/user-specified-service-options.
  *   `shuffleMode` (*type:* `String.t`, *default:* `nil`) - Output only. The shuffle mode used for the job.
  *   `tempStoragePrefix` (*type:* `String.t`, *default:* `nil`) - The prefix of the resources the system should use for temporary storage. The system will append the suffix "/temp-{JOBNAME} to this resource prefix, where {JOBNAME} is the value of the job_name field. The resulting bucket and object prefix is used as the prefix of the resources used to store temporary data needed during the job execution. NOTE: This will override the value in taskrunner_settings. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  *   `userAgent` (*type:* `map()`, *default:* `nil`) - A description of the process that generated the request.
  *   `version` (*type:* `map()`, *default:* `nil`) - A structure describing which components and their versions of the service are required in order to run the job.
  *   `workerPools` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.WorkerPool.t)`, *default:* `nil`) - The worker pools. At least one "harness" worker pool must be specified in order for the job to have workers.
  *   `workerRegion` (*type:* `String.t`, *default:* `nil`) - The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  *   `workerZone` (*type:* `String.t`, *default:* `nil`) - The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterManagerApiService => String.t(),
          :dataset => String.t(),
          :experiments => list(String.t()),
          :flexResourceSchedulingGoal => String.t(),
          :internalExperiments => map(),
          :sdkPipelineOptions => map(),
          :serviceAccountEmail => String.t(),
          :serviceKmsKeyName => String.t(),
          :serviceOptions => list(String.t()),
          :shuffleMode => String.t(),
          :tempStoragePrefix => String.t(),
          :userAgent => map(),
          :version => map(),
          :workerPools => list(GoogleApi.Dataflow.V1b3.Model.WorkerPool.t()),
          :workerRegion => String.t(),
          :workerZone => String.t()
        }

  field(:clusterManagerApiService)
  field(:dataset)
  field(:experiments, type: :list)
  field(:flexResourceSchedulingGoal)
  field(:internalExperiments, type: :map)
  field(:sdkPipelineOptions, type: :map)
  field(:serviceAccountEmail)
  field(:serviceKmsKeyName)
  field(:serviceOptions, type: :list)
  field(:shuffleMode)
  field(:tempStoragePrefix)
  field(:userAgent, type: :map)
  field(:version, type: :map)
  field(:workerPools, as: GoogleApi.Dataflow.V1b3.Model.WorkerPool, type: :list)
  field(:workerRegion)
  field(:workerZone)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.Environment do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.Environment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.Environment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
