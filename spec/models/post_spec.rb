require 'spec_helper'

describe Post do
  let(:post) { FactoryGirl.create(:post) }

  it { should respond_to(:title) }
  it { should respond_to(:content) }

  describe "creation" do
    context "valid attributes" do
      it "should be valid" do
        post = FactoryGirl.build(:post)
        post.should be_valid
      end
    end

    context "invalid attributes" do
      it "should not be valid" do
        post = FactoryGirl.build(:post, title: "", content: "")
        post.should_not be_valid
      end
    end
  end
end
