# frozen_string_literal: true

require 'rails_helper'

describe Book do
  subject(:book) { build(:book) }

  it { expect(book).to be_valid }
  it { expect(book).to validate_presence_of(:genre) }
  it { expect(book).to validate_presence_of(:author) }
  it { expect(book).to validate_presence_of(:image) }
  it { expect(book).to validate_presence_of(:title) }
  it { expect(book).to validate_presence_of(:editor) }
  it { expect(book).to validate_presence_of(:year) }
end
