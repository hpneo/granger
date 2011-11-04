require 'digest/md5'

module ApplicationHelper

  def gravatar_image(user, size=40)
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)

    "http://www.gravatar.com/avatar/#{hash}?s=#{size}"
  end

end
