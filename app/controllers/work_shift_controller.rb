class WorkShiftController < ApplicationController
  def index
    @work_shifts = WorkShift.all
  end
end
