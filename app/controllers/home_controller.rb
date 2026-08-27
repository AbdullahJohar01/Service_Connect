class HomeController < ApplicationController
  def index
    @service_categories = ServiceCategory
      .where(active: true)
      .order(:name)

    @featured_providers = ProviderProfile
      .where(approval_status: :approved)
      .includes(
        :user,
        provider_services: :service_category
      )
      .order(:business_name)
      .limit(3)
  end
end
