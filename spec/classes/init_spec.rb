require 'spec_helper'
describe 'systems' do

  context 'with defaults for all parameters' do
    it { should contain_class('systems') }
  end
end
