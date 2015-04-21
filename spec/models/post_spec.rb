require 'spec_helper'

describe Post do
  let(:post) { FactoryGirl.create(:post) }

  it { should respond_to(:title) }
  it { should respond_to(:content)}
end
