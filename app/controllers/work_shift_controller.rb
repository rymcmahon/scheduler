class WorkShiftController < ApplicationController
  def index
    @work_shifts = WorkShift.all

    respond_to do |format|
      format.html
      format.js { render partial: 'edit_shift'}
    end
  end

  def edit
    @work_shift = WorkShift.find(params[:work_shift_id])
  end

  def update
    @work_shift = WorkShift.find(params[:work_shift_id])
    @work_shift.update(starts_at: params[:starts_at])

  end
end
