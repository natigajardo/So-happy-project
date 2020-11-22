require 'test_helper'

class ProductInstancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_instance = product_instances(:one)
  end

  test "should get index" do
    get product_instances_url
    assert_response :success
  end

  test "should get new" do
    get new_product_instance_url
    assert_response :success
  end

  test "should create product_instance" do
    assert_difference('ProductInstance.count') do
      post product_instances_url, params: { product_instance: { price: @product_instance.price, product_id: @product_instance.product_id, size: @product_instance.size, sold: @product_instance.sold } }
    end

    assert_redirected_to product_instance_url(ProductInstance.last)
  end

  test "should show product_instance" do
    get product_instance_url(@product_instance)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_instance_url(@product_instance)
    assert_response :success
  end

  test "should update product_instance" do
    patch product_instance_url(@product_instance), params: { product_instance: { price: @product_instance.price, product_id: @product_instance.product_id, size: @product_instance.size, sold: @product_instance.sold } }
    assert_redirected_to product_instance_url(@product_instance)
  end

  test "should destroy product_instance" do
    assert_difference('ProductInstance.count', -1) do
      delete product_instance_url(@product_instance)
    end

    assert_redirected_to product_instances_url
  end
end
