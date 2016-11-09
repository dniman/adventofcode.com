module Day4
  RSpec.describe Program do
    describe "#start" do
      it "sends answer message" do
        message = capture(:stdout){ Day4::Program.new.start("abcdef") }
        expect(message).to match(/Answer: /)
      end

      it "sends number in decimal in answer message" do
        message = capture(:stdout) { Day4::Program.new.start("abcdef") }
        expect(message).to match(/\d+/)       
      end
    end
  end
end

