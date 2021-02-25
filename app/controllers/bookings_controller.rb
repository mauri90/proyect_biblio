class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
    end

    def new
        @booking = Booking.new
        @books = Book.all
        @users = User.all
        if current_user && current_user.role == "Usuario"
            @user = current_user
        end
    end

    def create
        @booking = Booking.new(booking_params)
        if @booking.save
            redirect_to bookings_path, notice: "La reserva del libro se creó correctamente."
        else
            @books = Book.all
            @users = User.all
            if current_user && current_user.role == "Usuario"
                @user = current_user
            end
            render :new
        end
    end

    def edit
        @books = Book.all
        @users = User.all
        @booking = Booking.find(params[:id])
    end

    def update
        @booking = Booking.find(params[:id])
        if @booking.update(booking_params)
            redirect_to bookings_path, notice: "La reserva del libro se actualizó correctamente."
        else
            @books = Book.all
            @users = User.all
            render :edit
        end
    end

    def destroy
        @booking = Booking.find(params[:id])
        if @booking.destroy
            redirect_to bookings_path, notice: "La reserva del libro se eliminó con éxito."
        end
    end

    private
    def booking_params
        params.require(:booking).permit(:book_id, :user_id, :start_date, :end_date)
    end
end