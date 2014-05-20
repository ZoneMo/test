package com.tencent.mm.pluginsdk.ui.chat;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.pluginsdk.ui.ChatFooterPanel;
import com.tencent.mm.pluginsdk.ui.simley.VPSmileyPanel;
import com.tencent.mm.sdk.platformtools.aa;

final class o
  implements View.OnClickListener
{
  o(ChatFooter paramChatFooter)
  {
  }

  public final void onClick(View paramView)
  {
    ChatFooter.f(this.fqG).VQ();
    if ((this.fqG.asL()) && (ChatFooter.n(this.fqG).getVisibility() == 0))
      this.fqG.UY();
    do
    {
      return;
      ChatFooter.o(this.fqG);
    }
    while (((VPSmileyPanel)ChatFooter.n(this.fqG)).auK() == this.fqG.asT());
    aa.d("MicroMsg.ChatFooter", "refresh smiley panel size");
    ((VPSmileyPanel)ChatFooter.n(this.fqG)).auJ();
    ((VPSmileyPanel)ChatFooter.n(this.fqG)).kR(this.fqG.asT());
    this.fqG.asI();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.o
 * JD-Core Version:    0.6.2
 */