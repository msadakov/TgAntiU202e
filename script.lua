function ok_cb(extra, success, result)
end

function on_msg_receive (msg)
   findname = string.find (msg.from.print_name, "‮")
   if (msg.text ~= nil) then
      findtext = string.find (msg.text, "‮")
   end
   if ((findname or findtext) ~= nil) then
      if (msg.to.peer_type == 'chat' or msg.to.peer_type == 'channel') then
         chatname = msg.to.print_name
      else
         chatname = msg.from.print_name
      end
      send_msg(chatname, '@' .. msg.from.username ..' фу таким быть! Переворачивать ТУПО!', ok_cb, false)
   end
end

function on_our_id (id)
end

function on_secret_chat_created (peer)
end

function on_user_update (user)
end

function on_chat_update (user)
end

function on_get_difference_end ()
end

function on_binlog_replay_end ()
end
