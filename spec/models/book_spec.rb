require 'spec_helper'

describe Book do
  context 'validations' do
    it  { should validate_presence_of :author }
    it  { should validate_presence_of :title }
  end
end
