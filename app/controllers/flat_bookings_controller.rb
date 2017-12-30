class FlatBookingsController < ApplicationController
 
 #Root path of app gives form to generate and display results on demand 
  def index
   
  end
  
  #generating flat sales report by month, year
  def flat_sales_report
  	if params[:type].present? && params[:start_date].present? && params[:end_date].present?
  	  @type = params[:type]
      if params[:start_date].to_date <= params[:end_date].to_date
        @sales_reports = FlatBooking.sales_report(params[:start_date], params[:end_date])
      else
      	redirect_to root_path, flash:{error: "Please ensure that the End Date is greater than or equal to the Start Date"}
      end
    else
    	redirect_to root_path, flash:{error: "All Fields are mandatory!" }
    end
  end

end

