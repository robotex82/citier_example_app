require 'spec_helper'

describe Audio do
  context 'validations' do
    it  { should validate_presence_of :title }
  end
end
