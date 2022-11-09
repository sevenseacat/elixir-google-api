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

defmodule GoogleApi.Content.V21.Model.Promotion do
  @moduledoc """
  Represents a promotion. See the following articles for more details. * [Promotions feed specification](https://support.google.com/merchants/answer/2906014) * [Local promotions feed specification](https://support.google.com/merchants/answer/10146130) * [Promotions on Buy on Google product data specification](https://support.google.com/merchants/answer/9173673)

  ## Attributes

  *   `longTitle` (*type:* `String.t`, *default:* `nil`) - Required. Long title for the promotion.
  *   `genericRedemptionCode` (*type:* `String.t`, *default:* `nil`) - Generic redemption code for the promotion. To be used with the `offerType` field.
  *   `moneyOffAmount` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - The money off amount offered in the promotion.
  *   `freeGiftItemId` (*type:* `String.t`, *default:* `nil`) - Free gift item ID for the promotion.
  *   `itemGroupIdExclusion` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by item group ID exclusion for the promotion.
  *   `offerType` (*type:* `String.t`, *default:* `nil`) - Required. Type of the promotion.
  *   `productType` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by product type for the promotion.
  *   `itemGroupId` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by item group ID for the promotion.
  *   `productApplicability` (*type:* `String.t`, *default:* `nil`) - Required. Applicability of the promotion to either all products or only specific products.
  *   `freeGiftValue` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Free gift value for the promotion.
  *   `promotionId` (*type:* `String.t`, *default:* `nil`) - Required. The user provided promotion ID to uniquely identify the promotion.
  *   `freeGiftDescription` (*type:* `String.t`, *default:* `nil`) - Free gift description for the promotion.
  *   `percentOff` (*type:* `integer()`, *default:* `nil`) - The percentage discount offered in the promotion.
  *   `moneyBudget` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Cost cap for the promotion.
  *   `couponValueType` (*type:* `String.t`, *default:* `nil`) - Required. Coupon value type for the promotion.
  *   `itemId` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by item ID for the promotion.
  *   `minimumPurchaseAmount` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Minimum purchase amount for the promotion.
  *   `promotionDestinationIds` (*type:* `list(String.t)`, *default:* `nil`) - Destination ID for the promotion.
  *   `shippingServiceNames` (*type:* `list(String.t)`, *default:* `nil`) - Shipping service names for the promotion.
  *   `promotionEffectiveTimePeriod` (*type:* `GoogleApi.Content.V21.Model.TimePeriod.t`, *default:* `nil`) - Required. `TimePeriod` representation of the promotion's effective dates.
  *   `promotionDisplayDates` (*type:* `String.t`, *default:* `nil`) - String representation of the promotion display dates. Deprecated. Use `promotion_display_time_period` instead.
  *   `promotionEffectiveDates` (*type:* `String.t`, *default:* `nil`) - String representation of the promotion effective dates. Deprecated. Use `promotion_effective_time_period` instead.
  *   `storeCodeExclusion` (*type:* `list(String.t)`, *default:* `nil`) - Store codes to exclude for the promotion.
  *   `storeApplicability` (*type:* `String.t`, *default:* `nil`) - Whether the promotion applies to all stores, or only specified stores. Local Inventory ads promotions throw an error if no store applicability is included. An INVALID_ARGUMENT error is thrown if store_applicability is set to ALL_STORES and store_code or score_code_exclusion is set to a value.
  *   `itemIdExclusion` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by item ID exclusion for the promotion.
  *   `brand` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by brand for the promotion.
  *   `promotionUrl` (*type:* `String.t`, *default:* `nil`) - URL to the page on the merchant's site where the promotion shows. Local Inventory ads promotions throw an error if no promo url is included. URL is used to confirm that the promotion is valid and can be redeemed.
  *   `minimumPurchaseQuantity` (*type:* `integer()`, *default:* `nil`) - Minimum purchase quantity for the promotion.
  *   `limitValue` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Maximum purchase value for the promotion.
  *   `orderLimit` (*type:* `integer()`, *default:* `nil`) - Order limit for the promotion.
  *   `brandExclusion` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by brand exclusion for the promotion.
  *   `productTypeExclusion` (*type:* `list(String.t)`, *default:* `nil`) - Product filter by product type exclusion for the promotion.
  *   `promotionDisplayTimePeriod` (*type:* `GoogleApi.Content.V21.Model.TimePeriod.t`, *default:* `nil`) - `TimePeriod` representation of the promotion's display dates.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. Output only. The REST promotion ID to uniquely identify the promotion. Content API methods that operate on promotions take this as their `promotionId` parameter. The REST ID for a promotion is of the form channel:contentLanguage:targetCountry:promotionId The `channel` field has a value of `"online"`, `"in_store"`, or `"online_in_store"`.
  *   `storeCode` (*type:* `list(String.t)`, *default:* `nil`) - Store codes to include for the promotion.
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - Required. The content language used as part of the unique identifier. `en` content language is available for all target countries. `fr` content language is available for `CA` and `FR` target countries, and `de` content language is available for `DE` target country.
  *   `limitQuantity` (*type:* `integer()`, *default:* `nil`) - Maximum purchase quantity for the promotion.
  *   `getThisQuantityDiscounted` (*type:* `integer()`, *default:* `nil`) - The number of items discounted in the promotion.
  *   `redemptionChannel` (*type:* `list(String.t)`, *default:* `nil`) - Required. Redemption channel for the promotion. At least one channel is required.
  *   `targetCountry` (*type:* `String.t`, *default:* `nil`) - Required. The target country used as part of the unique identifier. Can be `AU`, `CA`, `DE`, `FR`, `GB`, `IN` or `US`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :longTitle => String.t() | nil,
          :genericRedemptionCode => String.t() | nil,
          :moneyOffAmount => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :freeGiftItemId => String.t() | nil,
          :itemGroupIdExclusion => list(String.t()) | nil,
          :offerType => String.t() | nil,
          :productType => list(String.t()) | nil,
          :itemGroupId => list(String.t()) | nil,
          :productApplicability => String.t() | nil,
          :freeGiftValue => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :promotionId => String.t() | nil,
          :freeGiftDescription => String.t() | nil,
          :percentOff => integer() | nil,
          :moneyBudget => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :couponValueType => String.t() | nil,
          :itemId => list(String.t()) | nil,
          :minimumPurchaseAmount => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :promotionDestinationIds => list(String.t()) | nil,
          :shippingServiceNames => list(String.t()) | nil,
          :promotionEffectiveTimePeriod => GoogleApi.Content.V21.Model.TimePeriod.t() | nil,
          :promotionDisplayDates => String.t() | nil,
          :promotionEffectiveDates => String.t() | nil,
          :storeCodeExclusion => list(String.t()) | nil,
          :storeApplicability => String.t() | nil,
          :itemIdExclusion => list(String.t()) | nil,
          :brand => list(String.t()) | nil,
          :promotionUrl => String.t() | nil,
          :minimumPurchaseQuantity => integer() | nil,
          :limitValue => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :orderLimit => integer() | nil,
          :brandExclusion => list(String.t()) | nil,
          :productTypeExclusion => list(String.t()) | nil,
          :promotionDisplayTimePeriod => GoogleApi.Content.V21.Model.TimePeriod.t() | nil,
          :id => String.t() | nil,
          :storeCode => list(String.t()) | nil,
          :contentLanguage => String.t() | nil,
          :limitQuantity => integer() | nil,
          :getThisQuantityDiscounted => integer() | nil,
          :redemptionChannel => list(String.t()) | nil,
          :targetCountry => String.t() | nil
        }

  field(:longTitle)
  field(:genericRedemptionCode)
  field(:moneyOffAmount, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:freeGiftItemId)
  field(:itemGroupIdExclusion, type: :list)
  field(:offerType)
  field(:productType, type: :list)
  field(:itemGroupId, type: :list)
  field(:productApplicability)
  field(:freeGiftValue, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:promotionId)
  field(:freeGiftDescription)
  field(:percentOff)
  field(:moneyBudget, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:couponValueType)
  field(:itemId, type: :list)
  field(:minimumPurchaseAmount, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:promotionDestinationIds, type: :list)
  field(:shippingServiceNames, type: :list)
  field(:promotionEffectiveTimePeriod, as: GoogleApi.Content.V21.Model.TimePeriod)
  field(:promotionDisplayDates)
  field(:promotionEffectiveDates)
  field(:storeCodeExclusion, type: :list)
  field(:storeApplicability)
  field(:itemIdExclusion, type: :list)
  field(:brand, type: :list)
  field(:promotionUrl)
  field(:minimumPurchaseQuantity)
  field(:limitValue, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:orderLimit)
  field(:brandExclusion, type: :list)
  field(:productTypeExclusion, type: :list)
  field(:promotionDisplayTimePeriod, as: GoogleApi.Content.V21.Model.TimePeriod)
  field(:id)
  field(:storeCode, type: :list)
  field(:contentLanguage)
  field(:limitQuantity)
  field(:getThisQuantityDiscounted)
  field(:redemptionChannel, type: :list)
  field(:targetCountry)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.Promotion do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.Promotion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.Promotion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
