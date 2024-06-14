class MusicRecordsController < ApplicationController
  before_action :set_music_record, only: [:order, :rent]

  def order
    @order = current_user.orders.build(music_record: @music_record, start_date: Date.today)

    if @order.save
      redirect_to @music_record, notice: 'Music record successfully.'
    else
      redirect_to @music_record, alert: 'Failed to order music record.'
    end
  end

  def rent
    @rental = current_user.rentals.build(
      music_record: @music_record,
      start_date: Date.today,
      end_date: 3.months.from_now,
      damage_assessment: params[:damage_assessment],
      price: params[:price]
    )

    if @rental.save
      redirect_to @music_record, notice: 'Music record rented successfully.'
    else
      redirect_to @music_record, alert: 'Failed to rent music record.'
    end
  end

  private 

  def set_music_record
    @music_record = MusicRecord.find(params[:id])
  end
end
