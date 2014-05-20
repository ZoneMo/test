package com.tencent.mm.pluginsdk.ui.chat;

import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.tencent.mm.pluginsdk.ui.ChatFooterPanel;

final class ad extends Handler
{
  ad(ChatFooter paramChatFooter)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
      return;
    case 4097:
    }
    ChatFooter.f(this.fqG, true);
    ViewGroup.LayoutParams localLayoutParams = ChatFooter.D(this.fqG).getLayoutParams();
    int i = ChatFooter.D(this.fqG).getBottom() - ChatFooter.D(this.fqG).getTop();
    if (this.fqG.asL())
    {
      ChatFooter.n(this.fqG).setVisibility(8);
      ChatFooter.j(this.fqG).setVisibility(8);
      ChatFooter.D(this.fqG).setVisibility(4);
    }
    if (i <= 3)
    {
      ChatFooter.f(this.fqG, false);
      ChatFooter.D(this.fqG).setVisibility(8);
      ChatFooter.b(this.fqG, this.fqG.asT());
      return;
    }
    localLayoutParams.height = Math.max(i - 60, 1);
    ChatFooter.D(this.fqG).setLayoutParams(localLayoutParams);
    ChatFooter.E(this.fqG);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.ad
 * JD-Core Version:    0.6.2
 */