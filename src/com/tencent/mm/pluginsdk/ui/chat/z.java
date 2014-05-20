package com.tencent.mm.pluginsdk.ui.chat;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.compatible.a.b;

final class z
  implements b
{
  z(ChatFooter paramChatFooter, boolean paramBoolean)
  {
  }

  public final void run()
  {
    Message localMessage = new Message();
    localMessage.what = 1002;
    localMessage.obj = Boolean.valueOf(this.fqK);
    ChatFooter.C(this.fqG).sendMessage(localMessage);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.z
 * JD-Core Version:    0.6.2
 */