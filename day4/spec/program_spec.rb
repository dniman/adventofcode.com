module Day4
  RSpec.describe Program do
    describe "#start" do
      it "sends response header" do
        @message = capture(:stdout){ Day4::Program.new.start }
        expect(@message).to match(/Answer:/)
      end
    end
  end
end