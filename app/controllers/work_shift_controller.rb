class WorkShiftController < ApplicationController
  def index
    @work_shifts = WorkShift.all

    respond_to do |format|
      format.html
      format.js { render partial: 'edit_shift'}
    end
  end
end
