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

describe SidenotesController do

  # This should return the minimal set of attributes required to create a valid
  # Sidenote. As you add validations to Sidenote, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "content" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SidenotesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all sidenotes as @sidenotes" do
      sidenote = Sidenote.create! valid_attributes
      get :index, {}, valid_session
      assigns(:sidenotes).should eq([sidenote])
    end
  end

  describe "GET show" do
    it "assigns the requested sidenote as @sidenote" do
      sidenote = Sidenote.create! valid_attributes
      get :show, {:id => sidenote.to_param}, valid_session
      assigns(:sidenote).should eq(sidenote)
    end
  end

  describe "GET new" do
    it "assigns a new sidenote as @sidenote" do
      get :new, {}, valid_session
      assigns(:sidenote).should be_a_new(Sidenote)
    end
  end

  describe "GET edit" do
    it "assigns the requested sidenote as @sidenote" do
      sidenote = Sidenote.create! valid_attributes
      get :edit, {:id => sidenote.to_param}, valid_session
      assigns(:sidenote).should eq(sidenote)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Sidenote" do
        expect {
          post :create, {:sidenote => valid_attributes}, valid_session
        }.to change(Sidenote, :count).by(1)
      end

      it "assigns a newly created sidenote as @sidenote" do
        post :create, {:sidenote => valid_attributes}, valid_session
        assigns(:sidenote).should be_a(Sidenote)
        assigns(:sidenote).should be_persisted
      end

      it "redirects to the created sidenote" do
        post :create, {:sidenote => valid_attributes}, valid_session
        response.should redirect_to(Sidenote.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sidenote as @sidenote" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sidenote.any_instance.stub(:save).and_return(false)
        post :create, {:sidenote => { "content" => "invalid value" }}, valid_session
        assigns(:sidenote).should be_a_new(Sidenote)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sidenote.any_instance.stub(:save).and_return(false)
        post :create, {:sidenote => { "content" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sidenote" do
        sidenote = Sidenote.create! valid_attributes
        # Assuming there are no other sidenotes in the database, this
        # specifies that the Sidenote created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Sidenote.any_instance.should_receive(:update_attributes).with({ "content" => "MyString" })
        put :update, {:id => sidenote.to_param, :sidenote => { "content" => "MyString" }}, valid_session
      end

      it "assigns the requested sidenote as @sidenote" do
        sidenote = Sidenote.create! valid_attributes
        put :update, {:id => sidenote.to_param, :sidenote => valid_attributes}, valid_session
        assigns(:sidenote).should eq(sidenote)
      end

      it "redirects to the sidenote" do
        sidenote = Sidenote.create! valid_attributes
        put :update, {:id => sidenote.to_param, :sidenote => valid_attributes}, valid_session
        response.should redirect_to(sidenote)
      end
    end

    describe "with invalid params" do
      it "assigns the sidenote as @sidenote" do
        sidenote = Sidenote.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sidenote.any_instance.stub(:save).and_return(false)
        put :update, {:id => sidenote.to_param, :sidenote => { "content" => "invalid value" }}, valid_session
        assigns(:sidenote).should eq(sidenote)
      end

      it "re-renders the 'edit' template" do
        sidenote = Sidenote.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sidenote.any_instance.stub(:save).and_return(false)
        put :update, {:id => sidenote.to_param, :sidenote => { "content" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sidenote" do
      sidenote = Sidenote.create! valid_attributes
      expect {
        delete :destroy, {:id => sidenote.to_param}, valid_session
      }.to change(Sidenote, :count).by(-1)
    end

    it "redirects to the sidenotes list" do
      sidenote = Sidenote.create! valid_attributes
      delete :destroy, {:id => sidenote.to_param}, valid_session
      response.should redirect_to(sidenotes_url)
    end
  end

end
