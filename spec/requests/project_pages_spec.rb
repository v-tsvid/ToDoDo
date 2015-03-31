require 'spec_helper'

describe "Project pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "project creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a project" do
        expect { click_button "Save" }.not_to change(Project, :count)
      end

      describe "error messages" do
        before { click_button "Save" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do

      before { fill_in 'project_title', with: "Lorem ipsum" }
      it "should create a project" do
        expect { click_button "Save" }.to change(Project, :count).by(1)
      end
    end
  end

  describe "project destruction" do
    before { FactoryGirl.create(:project, user: user) }

    describe "as correct user" do
      before { visit root_path }

      it "should delete a project" do
        expect { click_link "delete" }.to change(Project, :count).by(-1)
      end
    end
  end

  describe "project edit" do
    let(:user) { FactoryGirl.create(:user) }
    let(:project) { FactoryGirl.create(:project, user: user) }

    before { visit edit_project_path(project) }

    describe "page" do
      it { should have_content("Edit your project") }
      it { should have_title("Edit project") }
    end

    describe "with invalid information" do
      before do
        fill_in "Title",     with: " "
        click_button "Save" 
      end

      it { should have_content('error') }
    end
  end
end