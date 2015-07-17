require 'rails_helper'

describe Project do
  it { should validate_presence_of :app }
  it { should validate_presence_of :info }
  it { should belong_to :skill }

end
