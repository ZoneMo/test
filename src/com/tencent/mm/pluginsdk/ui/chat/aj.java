package com.tencent.mm.pluginsdk.ui.chat;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.pluginsdk.model.app.bi;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;

final class aj
  implements View.OnClickListener
{
  aj(ChatFooter paramChatFooter)
  {
  }

  public final void onClick(View paramView)
  {
    ChatFooter.f(this.fqG).VR();
    if ((ChatFooter.j(this.fqG).getVisibility() == 0) && (this.fqG.asL()))
    {
      if (ChatFooter.k(this.fqG) == 1)
      {
        this.fqG.UY();
        return;
      }
      this.fqG.asQ();
      return;
    }
    this.fqG.asS();
    if ((ChatFooter.l(this.fqG) != null) && (ChatFooter.l(this.fqG).getVisibility() == 0))
    {
      aa.d("MicroMsg.ChatFooter", "voiceInputPanel is VISIBLE, set appPanel VISIBLE");
      ChatFooter.l(this.fqG).setVisibility(8);
      ChatFooter.l(this.fqG).reset();
    }
    bi.aqk().a(al.getContext(), ChatFooter.m(this.fqG));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.aj
 * JD-Core Version:    0.6.2
 */