require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CalculatorsController do

  # This should return the minimal set of attributes required to create a valid
  # Calculator. As you add validations to Calculator, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all calculators as @calculators" do
      calculator = Calculator.create! valid_attributes
      get :index
      assigns(:calculators).should eq([calculator])
    end
  end

  describe "GET show" do
    it "assigns the requested calculator as @calculator" do
      calculator = Calculator.create! valid_attributes
      get :show, :id => calculator.id.to_s
      assigns(:calculator).should eq(calculator)
    end
  end

  describe "GET new" do
    it "assigns a new calculator as @calculator" do
      get :new
      assigns(:calculator).should be_a_new(Calculator)
    end
  end

  describe "GET edit" do
    it "assigns the requested calculator as @calculator" do
      calculator = Calculator.create! valid_attributes
      get :edit, :id => calculator.id.to_s
      assigns(:calculator).should eq(calculator)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Calculator" do
        expect {
          post :create, :calculator => valid_attributes
        }.to change(Calculator, :count).by(1)
      end

      it "assigns a newly created calculator as @calculator" do
        post :create, :calculator => valid_attributes
        assigns(:calculator).should be_a(Calculator)
        assigns(:calculator).should be_persisted
      end

      it "redirects to the created calculator" do
        post :create, :calculator => valid_attributes
        response.should redirect_to(Calculator.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved calculator as @calculator" do
        # Trigger the behavior that occurs when invalid params are submitted
        Calculator.any_instance.stub(:save).and_return(false)
        post :create, :calculator => {}
        assigns(:calculator).should be_a_new(Calculator)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Calculator.any_instance.stub(:save).and_return(false)
        post :create, :calculator => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested calculator" do
        calculator = Calculator.create! valid_attributes
        # Assuming there are no other calculators in the database, this
        # specifies that the Calculator created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Calculator.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => calculator.id, :calculator => {'these' => 'params'}
      end

      it "assigns the requested calculator as @calculator" do
        calculator = Calculator.create! valid_attributes
        put :update, :id => calculator.id, :calculator => valid_attributes
        assigns(:calculator).should eq(calculator)
      end

      it "redirects to the calculator" do
        calculator = Calculator.create! valid_attributes
        put :update, :id => calculator.id, :calculator => valid_attributes
        response.should redirect_to(calculator)
      end
    end

    describe "with invalid params" do
      it "assigns the calculator as @calculator" do
        calculator = Calculator.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Calculator.any_instance.stub(:save).and_return(false)
        put :update, :id => calculator.id.to_s, :calculator => {}
        assigns(:calculator).should eq(calculator)
      end

      it "re-renders the 'edit' template" do
        calculator = Calculator.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Calculator.any_instance.stub(:save).and_return(false)
        put :update, :id => calculator.id.to_s, :calculator => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested calculator" do
      calculator = Calculator.create! valid_attributes
      expect {
        delete :destroy, :id => calculator.id.to_s
      }.to change(Calculator, :count).by(-1)
    end

    it "redirects to the calculators list" do
      calculator = Calculator.create! valid_attributes
      delete :destroy, :id => calculator.id.to_s
      response.should redirect_to(calculators_url)
    end
  end

end
