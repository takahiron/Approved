module Approved
  module Authentication
    # 認証処理
    def judgment(url, user_id = nil)
      judg = false
      if user_id.present?
        role_users = Approved::RoleAndUser.where(user_id: user_id).load
        role_users.each do |i|
          judg = select_role(i.role, url)
        end
      else
        role = Approved::Role.where(types: "people").first
        judg = select_role(role, url)
      end
      judg
    end

    private
    def select_role(role, url)
      flg = false
      role.get_authority.each do |key, value|
        if key == url
          flg = value
          break
        end
        idx = key.rindex("::Engine")
        if idx.present?
          uidx = url.index("/")
          if uidx.present?
            if url[0, uidx].classify == key[0,idx]
              flg = value
            end
          end
        end
      end
      flg
    end
  end
end
