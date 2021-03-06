require 'spec_helper'

describe TouristDestination do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :description }
  it { is_expected.to validate_presence_of :country_id }
end
