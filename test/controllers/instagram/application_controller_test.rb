require 'test_helper'

class Instagram::ApplicationControllerTest < ActionController::TestCase
  test "the truth" do
    assert true
  end

  test "api getMetadata normal case" do
  	tag='snow'
  	access_token='2019746130.59a3f2b.86a0135240404ed5b908a14c0a2d9402'
  	uri="https://tarea2-mmosser-staging.herokuapp.com/instagram/tag/metadata"

  	query = Hash.new
  	query.store('tag', tag)
  	query.store('acces_token', access_token)

  	response=HTTParty.post(uri, :body => query.to_json)
  	if (response.code==200)
  		assert true
  	else
  		assert false
  	end
  end


  test "api getMetadata param TOKEN unvalid"
  	tag='snow'
  	uri="https://tarea2-mmosser-staging.herokuapp.com/instagram/tag/metadata"

  	query = Hash.new
  	query.store('tag', tag)
  	query.store('acces_token', access_token)

  	response=HTTParty.post(uri, :body => query.to_json)
  	if (response.code==400)
  		assert true
  	else
  		assert false
  	end
  end

  test "api getMetadata param TAG unvalid"
  	access_token='2019746130.59a3f2b.86a0135240404ed5b908a14c0a2d9402'
  	uri="https://tarea2-mmosser-staging.herokuapp.com/instagram/tag/metadata"

  	query = Hash.new
  	query.store('tag', tag)
  	query.store('acces_token', access_token)

  	response=HTTParty.post(uri, :body => query.to_json)
  	if (response.code==400)
  		assert true
  	else
  		assert false
  	end
  end


  test "api getMetadata request on instagram API unvalid"
  	access_token='1'
  	uri="https://tarea2-mmosser-staging.herokuapp.com/instagram/tag/metadata"

  	query = Hash.new
  	query.store('tag', tag)
  	query.store('acces_token', access_token)

  	response=HTTParty.post(uri, :body => query.to_json)
  	if (response.code==401)
  		assert true
  	else
  		assert false
  	end
  end

end