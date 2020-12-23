require 'test_helper'

class CreaturesInfosControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get creatures_infos_index_url
    assert_response :success
  end
end
