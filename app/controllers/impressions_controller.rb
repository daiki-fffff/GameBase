class ImpressionsController < ApplicationController
  def index
    @impressions = Impression.all
  end
end
