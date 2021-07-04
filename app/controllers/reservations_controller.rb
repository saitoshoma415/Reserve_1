class ReservationsController < ApplicationController
  def index
  end

  def home
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
    # @reservation.description_of_works.build
  end

  def create  
    @reservation = Reservation.create(reservation_params)
    if @reservation.after_save 
      flash[:success] = "予約が完了しました！"
      redirect_to :root
    else
      flash.now[alert] = "予約が失敗しました。"
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(
      :description_of_work_id,
      :orderer_id,
      :contractor_id,
      :states,
      description_of_works_attributes: [:types,:floors,:buildings,:modes,:formation_levels,:work_times
      ]).merge(user_id: current_user.id)
  end
      
    
  
end
