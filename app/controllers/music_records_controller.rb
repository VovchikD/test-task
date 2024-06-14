class MusicRecordsController < ApplicationController
  before_action :set_music_record, only: [:order, :rent, :sell]

  def order
    @order = current_user.orders.build(music_record: @music_record, start_date: Date.today)

    if @order.save
      redirect_to @music_record, notice: 'Music record successfully.'
    else
      redirect_to @music_record, alert: 'Failed to order music record.'
    end
  end

  def rent
    @rental = current_user.rentals.build(rent_params.merge(music_record: @music_record))

    if @rental.save
      redirect_to @music_record, notice: 'Music record rented successfully.'
    else
      redirect_to @music_record, alert: 'Failed to rent music record.'
    end
  end

  def sell
    @sale = current_user.sales.build(sale_params.merge(music_record: @music_record))

    if @sale.save
      redirect_to @music_record, notice: 'Music record sold successfully.'
    else
      redirect_to @music_record, alert: 'Failed to sell music record.'
    end
  end

  private 

  def set_music_record
    @music_record = MusicRecord.find(params[:id])
  end

  def sale_params
    params.require(:sale).permit(:price, :sale_date)
  end

  def rent_params
    params.require(:rental).permit(:start_date, :end_date, :damage_assessment, :price)
  end
end
