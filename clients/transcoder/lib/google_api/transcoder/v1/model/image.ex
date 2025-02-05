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

defmodule GoogleApi.Transcoder.V1.Model.Image do
  @moduledoc """
  Overlaid jpeg image.

  ## Attributes

  *   `alpha` (*type:* `float()`, *default:* `nil`) - Target image opacity. Valid values are from `1.0` (solid, default) to `0.0` (transparent), exclusive. Set this to a value greater than `0.0`.
  *   `resolution` (*type:* `GoogleApi.Transcoder.V1.Model.NormalizedCoordinate.t`, *default:* `nil`) - Normalized image resolution, based on output video resolution. Valid values: `0.0`–`1.0`. To respect the original image aspect ratio, set either `x` or `y` to `0.0`. To use the original image resolution, set both `x` and `y` to `0.0`.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Required. URI of the JPEG image in Cloud Storage. For example, `gs://bucket/inputs/image.jpeg`. JPEG is the only supported image type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alpha => float() | nil,
          :resolution => GoogleApi.Transcoder.V1.Model.NormalizedCoordinate.t() | nil,
          :uri => String.t() | nil
        }

  field(:alpha)
  field(:resolution, as: GoogleApi.Transcoder.V1.Model.NormalizedCoordinate)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.Image do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.Image.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
