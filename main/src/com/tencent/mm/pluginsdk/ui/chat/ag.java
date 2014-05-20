package com.tencent.mm.pluginsdk.ui.chat;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.tencent.mm.ui.widget.MMEditText;

final class ag
  implements View.OnTouchListener
{
  ag(ChatFooter paramChatFooter)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    this.fqG.cD(true);
    if (!ChatFooter.d(this.fqG))
      this.fqG.asR();
    ChatFooter localChatFooter = this.fqG;
    if (ChatFooter.a(this.fqG).length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      ChatFooter.b(localChatFooter, bool);
      ChatFooter.e(this.fqG);
      ChatFooter.a(this.fqG, true);
      ChatFooter.f(this.fqG).VS();
      ChatFooter.g(this.fqG);
      return false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.ag
 * JD-Core Version:    0.6.2
 */