class RecordsController < ApplicationController
  def new
  end

  def create
    raw_record = params[:raw_record]
    jkf = JKFService.parse(raw_record)
    redirect_to Record.find_or_create_by_jkf(jkf)
  end

  def show
    @record = Record.find(params[:id])
  end
end
