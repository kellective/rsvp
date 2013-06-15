class EventRsvpsController < ApplicationController
  # GET /event_rsvps
  # GET /event_rsvps.json
  def index
    @event_rsvps = EventRsvp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @event_rsvps }
    end
  end

  # GET /event_rsvps/1
  # GET /event_rsvps/1.json
  def show
    @event_rsvp = EventRsvp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event_rsvp }
    end
  end

  # GET /event_rsvps/new
  # GET /event_rsvps/new.json
  def new
    @event_rsvp = EventRsvp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @event_rsvp }
    end
  end

  # GET /event_rsvps/1/edit
  def edit
    @event_rsvp = EventRsvp.find(params[:id])
  end

  # POST /event_rsvps
  # POST /event_rsvps.json
  def create
    @event_rsvp = EventRsvp.new(params[:event_rsvp])

    respond_to do |format|
      if @event_rsvp.save
        format.html { redirect_to @event_rsvp, :notice => 'Event rsvp was successfully created.' }
        format.json { render :json => @event_rsvp, :status => :created, :location => @event_rsvp }
      else
        format.html { render :action => "new" }
        format.json { render :json => @event_rsvp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /event_rsvps/1
  # PUT /event_rsvps/1.json
  def update
    @event_rsvp = EventRsvp.find(params[:id])

    respond_to do |format|
      if @event_rsvp.update_attributes(params[:event_rsvp])
        format.html { redirect_to @event_rsvp, :notice => 'Event rsvp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @event_rsvp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /event_rsvps/1
  # DELETE /event_rsvps/1.json
  def destroy
    @event_rsvp = EventRsvp.find(params[:id])
    @event_rsvp.destroy

    respond_to do |format|
      format.html { redirect_to event_rsvps_url }
      format.json { head :no_content }
    end
  end
end
