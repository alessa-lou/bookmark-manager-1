require './lib/bookmark.rb'

describe Bookmark do
  it { is_expected.to be_an_instance_of Bookmark }

  describe '#self' do
    it 'responds to all method' do
      expect(subject).to respond_to(:all)
    end

    it 'responds to all method and displays bookmarks' do
      expect(subject.all).to eq(["B1", "B2", "B3"])
    end
  end
end