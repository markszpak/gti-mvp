class ApplicationController < ActionController::Base
  protect_from_forgery

  def get_all_issues
    @redis = Redis.new
    @redis_issues = JSON.parse(@redis.get("Issues"))
    logger.info "***** #{@redis_issues.size} issues in database"
    @issues = Issue.all(@redis_issues)
  end


end
