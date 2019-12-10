# frozen_string_literal: true

require 'rails_helper'

describe Rent do
  subject(:rent) { build(:rent) }

  it { expect(rent).to be_valid }
  it { expect(rent).to validate_presence_of(:start_rent) }
  it { expect(rent).to validate_presence_of(:end_rent) }
end
