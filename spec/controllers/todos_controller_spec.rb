require "spec_helper"

describe TodosController do

  describe "GET new" do
    before(:each) do
      @todo = mock_model("Todo")
      allow(Todo).to receive(:new).and_return(@todo)
    end
    it "should assign @todo" do
      get :new
      #checks if @todo is some instance of a Todo
      expect(assigns(:todo)).to eq(@todo) 
    end

    it "should render :new template" do
      get :new
      expect(response).to render_template("new")
    end

  end

  describe "Post create" do
    before(:each) do
      @todo = mock_model("Todo")
      allow(Todo).to receive(:create)
    end
    
    it "should create Todo" do
      #writing test
      expect(Todo).to receive(:create).with({"title" => "get something done!"})
      #causing test to run
      post :create, {todo: {title: "get something done!"}}
    end

    it "should redirect_to '/todos/new'" do
      post :create, {todo: {title: "get something done!"}}
      expect(response).to redirect_to("/todos/new")
    end

  end

end

