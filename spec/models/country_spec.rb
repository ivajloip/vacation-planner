require 'spec_helper'

describe Country do
  it { is_expected.to validate_presence_of :display_name }
  it { is_expected.to validate_presence_of :full_name }
  it { is_expected.to validate_presence_of :code }
  it { is_expected.to validate_presence_of :longitude }
  it { is_expected.to validate_presence_of :latitude }
end
