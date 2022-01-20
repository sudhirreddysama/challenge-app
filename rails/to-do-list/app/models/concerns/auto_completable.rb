# frozen_string_literal: true

module AutoCompletable
  extend ActiveSupport::Concern

  after_validation :autocomplete, on: :create

  def autocomplete
    self.complete = true
  end
end
