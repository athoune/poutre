require 'em-http-request'

class LumberJack

  def initialize url, wait=0
    @url = url
    @wait = wait
    self.reset
  end

  # Set counters to 0
  def reset
    @cpt = 0
    @errors = 0
    @stopped = false
  end

  def fetch
    @cpt += 1
    @http = EventMachine::HttpRequest.new(@url, :connect_timeout => 30, :inactivity_timeout => 60, :redirects => 1).get
    @http.errback do |http|
      @errors += 1
      print "#"
      EM.add_timer(@wait) do
        self.fetch unless @stopped
      end
    end
    @http.callback do
      print "." if @cpt % 100 == 1
      EM.add_timer(@wait) do
        self.fetch unless @stopped
      end
    end
    self
  end

  def close
    @stopped = true
    @http.close
  end

end
