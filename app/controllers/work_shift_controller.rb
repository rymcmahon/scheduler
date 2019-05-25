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
    starts_at_date_time = DateTime.new params["starts_at(1i)"].to_i, params["starts_at(2i)"].to_i, params["starts_at(3i)"].to_i, params["starts_at(4i)"].to_i, params["starts_at(5i)"].to_i
    ends_at_date_time = DateTime.new params["ends_at(1i)"].to_i, params["ends_at(2i)"].to_i, params["ends_at(3i)"].to_i, params["ends_at(4i)"].to_i, params["ends_at(5i)"].to_i
    @work_shift = WorkShift.find(params[:work_shift_id])
    @work_shift.update(starts_at: starts_at_date_time, ends_at: ends_at_date_time)
  end
end
