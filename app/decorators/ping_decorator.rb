# PingDecorator
class PingDecorator < Draper::Decorator
  delegate_all

  def successful?
    status == 1
  end

  def status_badge
    successful? ? 'badge-primary' : 'badge-danger'
  end

  def status_text
    successful? ? h.t('pings.success') : h.t('pings.fail')
  end
end