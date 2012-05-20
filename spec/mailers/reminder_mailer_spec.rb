require "spec_helper"

describe ReminderMailer do
  describe "reminder_email" do
    let(:mail) { ReminderMailer.reminder_email }

    it "renders the headers" do
      mail.subject.should eq("Reminder email")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
