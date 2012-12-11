require 'spec_helper'

describe Medium do
  context 'validations' do
    it  { should validate_presence_of :price }
  end
end
