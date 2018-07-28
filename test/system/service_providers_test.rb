require "application_system_test_case"

class ServiceProvidersTest < ApplicationSystemTestCase
  setup do
    @service_provider = service_providers(:one)
  end

  test "visiting the index" do
    visit service_providers_url
    assert_selector "h1", text: "Service Providers"
  end

  test "creating a Service provider" do
    visit service_providers_url
    click_on "New Service Provider"

    fill_in "Avatar", with: @service_provider.avatar
    fill_in "City", with: @service_provider.city
    fill_in "Companyname", with: @service_provider.companyName
    fill_in "Email", with: @service_provider.email
    fill_in "License", with: @service_provider.license
    fill_in "Phone", with: @service_provider.phone
    fill_in "Postalcode", with: @service_provider.postalCode
    fill_in "Province", with: @service_provider.province
    fill_in "Servicetype", with: @service_provider.serviceType
    fill_in "Street", with: @service_provider.street
    fill_in "Website", with: @service_provider.website
    click_on "Create Service provider"

    assert_text "Service provider was successfully created"
    click_on "Back"
  end

  test "updating a Service provider" do
    visit service_providers_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @service_provider.avatar
    fill_in "City", with: @service_provider.city
    fill_in "Companyname", with: @service_provider.companyName
    fill_in "Email", with: @service_provider.email
    fill_in "License", with: @service_provider.license
    fill_in "Phone", with: @service_provider.phone
    fill_in "Postalcode", with: @service_provider.postalCode
    fill_in "Province", with: @service_provider.province
    fill_in "Servicetype", with: @service_provider.serviceType
    fill_in "Street", with: @service_provider.street
    fill_in "Website", with: @service_provider.website
    click_on "Update Service provider"

    assert_text "Service provider was successfully updated"
    click_on "Back"
  end

  test "destroying a Service provider" do
    visit service_providers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service provider was successfully destroyed"
  end
end
