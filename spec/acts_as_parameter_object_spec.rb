require 'spec_helper'

class ParameterObjectExample
  include ActsAsParameterObject
  attr_accessor :title
  validates_presence_of :title
  def initialize(params = {})
    @title = params[:title]
  end
end

describe ParameterObjectExample do
  context "#parameter_object?" do
    it { described_class.should be_parameter_object }
  end

  # should be able to use methods of ActiveModel::Validations
  context "#validates_presence_of" do
    it { described_class.new.should_not be_valid }
    it { described_class.new(title: 'test').should be_valid }
  end
end
