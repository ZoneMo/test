package com.tencent.mm.pluginsdk.ui.chat;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;
import com.tencent.mm.ui.widget.MMEditText;

final class ai
  implements View.OnClickListener
{
  ai(ChatFooter paramChatFooter)
  {
  }

  public final void onClick(View paramView)
  {
    String str = ChatFooter.a(this.fqG).getText().toString();
    aa.d("MicroMsg.ChatFooter", "send msg onClick");
    if ((str.trim().length() == 0) && (str.length() != 0))
    {
      aa.d("MicroMsg.ChatFooter", "empty message cant be sent");
      if ((ChatFooter.i(this.fqG) == null) || (!ChatFooter.i(this.fqG).isShowing()))
        ChatFooter.a(this.fqG, h.c(this.fqG.getContext(), n.bgI, n.ber));
    }
    while (!ChatFooter.f(this.fqG).ls(str))
      return;
    ChatFooter.a(this.fqG).clearComposingText();
    ChatFooter.a(this.fqG).setText("");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.ai
 * JD-Core Version:    0.6.2
 */