package com.tencent.mm.pluginsdk.ui.chat;

import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import com.tencent.mm.an.a;
import com.tencent.mm.h;
import com.tencent.mm.ui.base.ce;

final class v extends Handler
{
  v(ChatFooter paramChatFooter)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (ChatFooter.z(this.fqG) != null)
    {
      ChatFooter.z(this.fqG).dismiss();
      ChatFooter.q(this.fqG).setBackgroundDrawable(a.k(this.fqG.getContext(), h.ajN));
      ChatFooter.q(this.fqG).setEnabled(true);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.v
 * JD-Core Version:    0.6.2
 */