package com.tencent.mm.pluginsdk.ui.chat;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.Button;
import com.tencent.mm.an.a;
import com.tencent.mm.h;
import com.tencent.mm.n;

final class r
  implements View.OnKeyListener
{
  r(ChatFooter paramChatFooter)
  {
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramKeyEvent.getAction())
    {
    default:
    case 0:
    case 1:
    }
    do
    {
      do
        return false;
      while (((paramInt != 23) && (paramInt != 66)) || (ChatFooter.s(this.fqG)) || (ChatFooter.r(this.fqG)));
      ChatFooter.d(this.fqG, true);
      ChatFooter.q(this.fqG).setBackgroundDrawable(a.k(this.fqG.getContext(), h.ajO));
      ChatFooter.q(this.fqG).setText(n.bgA);
      ChatFooter.f(this.fqG).VP();
      return false;
    }
    while ((paramInt != 23) && (paramInt != 66));
    ChatFooter.q(this.fqG).setBackgroundDrawable(a.k(this.fqG.getContext(), h.ajN));
    ChatFooter.q(this.fqG).setText(n.bgz);
    ChatFooter.f(this.fqG).VM();
    ChatFooter.d(this.fqG, false);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.r
 * JD-Core Version:    0.6.2
 */