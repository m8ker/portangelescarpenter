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

describe BlurbsController do

  # This should return the minimal set of attributes required to create a valid
  # Blurb. As you add validations to Blurb, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "content" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BlurbsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all blurbs as @blurbs" do
      blurb = Blurb.create! valid_attributes
      get :index, {}, valid_session
      assigns(:blurbs).should eq([blurb])
    end
  end

  describe "GET show" do
    it "assigns the requested blurb as @blurb" do
      blurb = Blurb.create! valid_attributes
      get :show, {:id => blurb.to_param}, valid_session
      assigns(:blurb).should eq(blurb)
    end
  end

  describe "GET new" do
    it "assigns a new blurb as @blurb" do
      get :new, {}, valid_session
      assigns(:blurb).should be_a_new(Blurb)
    end
  end

  describe "GET edit" do
    it "assigns the requested blurb as @blurb" do
      blurb = Blurb.create! valid_attributes
      get :edit, {:id => blurb.to_param}, valid_session
      assigns(:blurb).should eq(blurb)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Blurb" do
        expect {
          post :create, {:blurb => valid_attributes}, valid_session
        }.to change(Blurb, :count).by(1)
      end

      it "assigns a newly created blurb as @blurb" do
        post :create, {:blurb => valid_attributes}, valid_session
        assigns(:blurb).should be_a(Blurb)
        assigns(:blurb).should be_persisted
      end

      it "redirects to the created blurb" do
        post :create, {:blurb => valid_attributes}, valid_session
        response.should redirect_to(Blurb.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved blurb as @blurb" do
        # Trigger the behavior that occurs when invalid params are submitted
        Blurb.any_instance.stub(:save).and_return(false)
        post :create, {:blurb => { "content" => "invalid value" }}, valid_session
        assigns(:blurb).should be_a_new(Blurb)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Blurb.any_instance.stub(:save).and_return(false)
        post :create, {:blurb => { "content" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested blurb" do
        blurb = Blurb.create! valid_attributes
        # Assuming there are no other blurbs in the database, this
        # specifies that the Blurb created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Blurb.any_instance.should_receive(:update_attributes).with({ "content" => "MyText" })
        put :update, {:id => blurb.to_param, :blurb => { "content" => "MyText" }}, valid_session
      end

      it "assigns the requested blurb as @blurb" do
        blurb = Blurb.create! valid_attributes
        put :update, {:id => blurb.to_param, :blurb => valid_attributes}, valid_session
        assigns(:blurb).should eq(blurb)
      end

      it "redirects to the blurb" do
        blurb = Blurb.create! valid_attributes
        put :update, {:id => blurb.to_param, :blurb => valid_attributes}, valid_session
        response.should redirect_to(blurb)
      end
    end

    describe "with invalid params" do
      it "assigns the blurb as @blurb" do
        blurb = Blurb.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Blurb.any_instance.stub(:save).and_return(false)
        put :update, {:id => blurb.to_param, :blurb => { "content" => "invalid value" }}, valid_session
        assigns(:blurb).should eq(blurb)
      end

      it "re-renders the 'edit' template" do
        blurb = Blurb.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Blurb.any_instance.stub(:save).and_return(false)
        put :update, {:id => blurb.to_param, :blurb => { "content" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested blurb" do
      blurb = Blurb.create! valid_attributes
      expect {
        delete :destroy, {:id => blurb.to_param}, valid_session
      }.to change(Blurb, :count).by(-1)
    end

    it "redirects to the blurbs list" do
      blurb = Blurb.create! valid_attributes
      delete :destroy, {:id => blurb.to_param}, valid_session
      response.should redirect_to(blurbs_url)
    end
  end

end
