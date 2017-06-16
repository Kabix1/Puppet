require 'spec_helper'
describe 'setup' do
  context 'with default values for all parameters' do
    it { should contain_class('setup') }
  end
end
