require 'spec_helper'
require 'rspec/its'

describe Project do
  
  let(:user) { FactoryGirl.create(:user) }
  before { @project = user.projects.build(title: "Project1",
  	                  description: "Description of Project1",
  	                  deadline: 5.day.from_now,
  	                  priority: 1, is_done: false) }
  
  subject { @project }

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:deadline) }
  it { should respond_to(:priority) }
  it { should respond_to(:is_done) }
  it { should respond_to(:user) }

  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
  	before { @project.user_id = nil }
  	it { should_not be_valid }
  end

  describe "when title is blank" do
  	before { @project.title = " "}
  	it { should_not be_valid }
  end

  describe "when title is too long" do
  	before { @project.title = "n" * 151 }
  	it { should_not be_valid }
  end

  describe "when description is too long" do
  	before { @project.description = "d" * 501 }
  	it { should_not be_valid }
  end

  describe "when priority is nil" do
  	before { @project.priority = nil}
  	it { should_not be_valid }
  end
end
