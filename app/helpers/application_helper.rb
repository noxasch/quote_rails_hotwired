module ApplicationHelper
  def turbo_render_flash
    turbo_stream.prepend 'flash', partial: 'layouts/flash'
  end
end
