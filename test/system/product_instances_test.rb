require "application_system_test_case"

class ProductInstancesTest < ApplicationSystemTestCase
  setup do
    @product_instance = product_instances(:one)
  end

  test "visiting the index" do
    visit product_instances_url
    assert_selector "h1", text: "Product Instances"
  end

  test "creating a Product instance" do
    visit product_instances_url
    click_on "New Product Instance"

    fill_in "Price", with: @product_instance.price
    fill_in "Product", with: @product_instance.product_id
    fill_in "Size", with: @product_instance.size
    check "Sold" if @product_instance.sold
    click_on "Create Product instance"

    assert_text "Product instance was successfully created"
    click_on "Back"
  end

  test "updating a Product instance" do
    visit product_instances_url
    click_on "Edit", match: :first

    fill_in "Price", with: @product_instance.price
    fill_in "Product", with: @product_instance.product_id
    fill_in "Size", with: @product_instance.size
    check "Sold" if @product_instance.sold
    click_on "Update Product instance"

    assert_text "Product instance was successfully updated"
    click_on "Back"
  end

  test "destroying a Product instance" do
    visit product_instances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product instance was successfully destroyed"
  end
end
