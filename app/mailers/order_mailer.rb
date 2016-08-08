class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order       = order
    @user        = order.user
    @order_items = @order.items

    mail(to: @user.email, subject: "[JDStore] 感謝您完成本次的下單，以下是您這次購物明細 #{order.token}")
  end
end
