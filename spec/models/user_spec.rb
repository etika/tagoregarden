require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) { FactoryGirl.create(:user) }
    describe "#fullname" do
    it "returns the first and surnames separated by a space" do
      user = FactoryGirl.create(:user)
      expect(user.full_name).to eq "Etika Ahuja"
      expect(user).to validate_presence_of(:email)
    end
  end

    # it { is_expected.to validate_presence_of :password }

    # it { is_expected.to belong_to :role}

    it { should have_and_belong_to_many(:roles) }
    it "should not be a super admin" do
        expect(user.roles.first.name).to eq("customer")
    end
    # it {is_expected.to have_one(:primary_address).class_name("Address") }

    # it {is_expected.to have_many :brands}

    # it {is_expected.to have_many :announcements }

    # it {is_expected.to have_many :user_brands }

    # it "should have a name" do
    #   expect(user.name).to_not be_nil
    # end

    # it "should not be a super admin" do
    #     expect(user.super_admin?).to eq(false)
    # end

    # it "should not be an admin" do
    #     expect(user.admin?).to eq(false)
    # end

    # it "should be a super admin" do
    #     expect(super_admin.super_admin?).to eq(true)
    # end


    # it "should not be an admin" do
    #     expect(super_admin.admin?).to eq(false)
    # end

    # it "should not be a super admin" do
    #     expect(admin.super_admin?).to eq(false)
    # end

    # it "should be an admin" do
    #     expect(admin.admin?).to eq(true)
    # end

    # it "should be blank" do
    #     expect(user.reset_passcode).to eq(true)
    # end

    # it "should send out an email after creation" do
    #     User.set_callback(:create, :after, :confirm_mail)
    #     expect_any_instance_of(Notification).to receive(:confirmation_mail)
    #     FactoryGirl.create(:user)
    # end

  end