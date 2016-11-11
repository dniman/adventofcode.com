module Day4
  RSpec.describe Program do
    describe "#start" do
      let(:message){ capture(:stdout){ Day4::Program.new.start("abcdef") } }

      it "sends answer message" do
        expect(message).to match(/Answer: /)
      end

      it "sends number in decimal in answer message" do
        expect(message).to match(/\d+/)       
      end
    end
  end
end

