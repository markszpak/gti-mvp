class IssueController < ApplicationController
  # Manages an Issue

  before_filter :get_all_issues

  # list all the issues
  def index

  end

  def fracking_know
    @redis_test = @redis.get("mykey")

  end

  def fracking_quake

  end

  def fracking_water

  end

  def obama_record

  end

  def test

  end

  def converse

  end

end