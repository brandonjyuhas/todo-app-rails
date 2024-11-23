# frozen_string_literal: true

class ApplicationPlatform < PlatformAgent
  def ios?
    match?(/iPhone|iPad/)
  end

  def android?
    match?(/Android/)
  end

  def chrome?
    user_agent.browser.include?("Chrome")
  end

  def safari?
    user_agent.browser.include?("Safari")
  end

  def mobile?
    ios? || android?
  end

  def web_push_supported?
    mobile? && (chrome? || safari?)
  end
end
