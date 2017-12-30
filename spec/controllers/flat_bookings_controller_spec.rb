require "rails_helper"
RSpec.describe FlatBookingsController, type: :controller do

let(:flat_booking1) { 
		create(:flat_booking1)
	}


describe "test index action" do 
  it "renders the index template" do
    get :index
    expect(response).to render_template("index")
  end
end

context "flat_sales_report" do
  it "should give start_date nil should not allow" do
    get :flat_sales_report, {start_date: nil , end_date: Date.today, type: "Month"}
    should redirect_to action: :index
    expect(flash[:error]).to match(/All Fields are mandatory!/)
  end
end
context "flat_sales_report" do
  it "should give end_date nil should not allow" do
    get :flat_sales_report, {start_date: "11-08-2017" , end_date: nil, type: "Month"}
    should redirect_to action: :index
    expect(flash[:error]).to match(/All Fields are mandatory!/)
  end
end
context "flat_sales_report" do
  it "should give type nil should not allow" do
    get :flat_sales_report, {start_date: "11-08-2017" , end_date: Date.today, type: nil}
    should redirect_to action: :index
    expect(flash[:error]).to match(/All Fields are mandatory!/)
  end

end

context "flat_sales_report" do
  it "should give end_date nil should not allow" do
    get :flat_sales_report, {start_date: "11-08-2019" , end_date: Date.today, type: "Month"}
    should redirect_to action: :index
    expect(flash[:error]).to match(/Please ensure that the End Date is greater than or equal to the Start Date/)
  end
end

context "flat_sales_report" do
  it "should give end_date nil should not allow" do
     #xhr :get, :create
   xhr :get, :flat_sales_report, {start_date: "11-08-2015" , end_date: Date.today, type: "Month"}
   # should redirect_to action: :index
    puts response.body
    #expect(flash[:error]).to match(/Please ensure that the End Date is greater than or equal to the Start Date/)
  end
end






end
