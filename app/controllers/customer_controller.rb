class CustomerController < ApplicationController

  def show

  end

  def index

    @customer = Customer.new

  end

  def create

    @customer = Customer.new(params[:customer])
    
    respond_to do |format|
      if @customer.save
        format.html { redirect_to(@customer, :notice => 'customer was successfully created.') }
        format.xml  { render :xml => @customer, :status => :created, :location => @customer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @customer.errors, :status => :unprocessable_entity }
      end
    end

  end

end
