class Beta::PostsController < ApplicationController
  # GET /beta/posts
  # GET /beta/posts.xml
  def index
    @posts = ::Post.all
    logger.info @posts

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /beta/posts/1
  # GET /beta/posts/1.xml
  def show
    @post = ::Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /beta/posts/new
  # GET /beta/posts/new.xml
  def new
    @post = ::Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /beta/posts/1/edit
  def edit
    @post = ::Post.find(params[:id])
  end

  # POST /beta/posts
  # POST /beta/posts.xml
  def create
    @post = ::Post.new(params[:beta_post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to(@post, :notice => 'Post was successfully created.') }
        format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beta/posts/1
  # PUT /beta/posts/1.xml
  def update
    @post = ::Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to(@post, :notice => 'Post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beta/posts/1
  # DELETE /beta/posts/1.xml
  def destroy
    @post = ::Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(beta_posts_url) }
      format.xml  { head :ok }
    end
  end
end
