package com.tencent.mm.pluginsdk.ui.chat;

import android.text.Editable;
import android.widget.Button;
import android.widget.LinearLayout;
import com.tencent.mm.h;
import com.tencent.mm.ui.widget.MMEditText;

final class u
  implements bn
{
  u(ChatFooter paramChatFooter)
  {
  }

  public final void asY()
  {
    ChatFooter.l(this.fqG).reset();
    ChatFooter.a(this.fqG).setText("");
    ChatFooter.a(this.fqG, true);
  }

  public final void asZ()
  {
    ChatFooter.l(this.fqG).reset();
    ChatFooter.c(this.fqG).performClick();
  }

  public final void qN(String paramString)
  {
    if (this.fqG.asL())
    {
      ChatFooter.w(this.fqG);
      ChatFooter.x(this.fqG).setVisibility(0);
      ChatFooter.q(this.fqG).setVisibility(8);
      ChatFooter.a(this.fqG, true);
      ChatFooter.a(this.fqG, h.adq);
      ChatFooter.a(this.fqG).yd(paramString);
      if (ChatFooter.a(this.fqG).getText().length() > 0)
        ChatFooter.l(this.fqG).ath();
      return;
    }
    ChatFooter.l(this.fqG).reset();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.u
 * JD-Core Version:    0.6.2
 */