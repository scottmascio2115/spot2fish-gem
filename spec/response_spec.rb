require 'spec_helper'

describe Spot2fishResponse do

  it 'should have the base URI set to the proper spot2fish api endpoint' do

    expect(Spot2fishResponse.base_uri).to eq "http://api.spot2fish.com/api/v1"
  end
end
