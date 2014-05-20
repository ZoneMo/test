package com.tencent.mm.pluginsdk.ui.chat;

import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import android.widget.Button;
import android.widget.LinearLayout;
import com.tencent.mm.ui.widget.MMEditText;

final class s
  implements com.tencent.mm.pluginsdk.ui.h
{
  s(ChatFooter paramChatFooter)
  {
  }

  public final void ahP()
  {
    ChatFooter.w(this.fqG);
    ChatFooter.x(this.fqG).setVisibility(0);
    ChatFooter.q(this.fqG).setVisibility(8);
    ChatFooter.a(this.fqG, true);
    ChatFooter.a(this.fqG, com.tencent.mm.h.adq);
    if (ChatFooter.c(this.fqG) != null)
      ChatFooter.c(this.fqG).performClick();
  }

  public final void ahQ()
  {
    ChatFooter.w(this.fqG);
    ChatFooter.x(this.fqG).setVisibility(0);
    ChatFooter.q(this.fqG).setVisibility(8);
    ChatFooter.a(this.fqG, true);
    ChatFooter.a(this.fqG, com.tencent.mm.h.adq);
    ChatFooter.a(this.fqG).aPx().sendKeyEvent(new KeyEvent(0, 67));
    ChatFooter.a(this.fqG).aPx().sendKeyEvent(new KeyEvent(1, 67));
  }

  public final void append(String paramString)
  {
    ChatFooter.w(this.fqG);
    ChatFooter.x(this.fqG).setVisibility(0);
    ChatFooter.q(this.fqG).setVisibility(8);
    ChatFooter.a(this.fqG, true);
    ChatFooter.a(this.fqG, com.tencent.mm.h.adq);
    try
    {
      ChatFooter.a(this.fqG).yd(paramString);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void bB(boolean paramBoolean)
  {
    ChatFooter.w(this.fqG);
    ChatFooter.x(this.fqG).setVisibility(0);
    ChatFooter.q(this.fqG).setVisibility(8);
    ChatFooter.a(this.fqG, com.tencent.mm.h.adq);
    if (ChatFooter.a(this.fqG) != null)
      this.fqG.cD(paramBoolean);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.s
 * JD-Core Version:    0.6.2
 */