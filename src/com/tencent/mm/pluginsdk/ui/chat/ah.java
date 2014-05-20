package com.tencent.mm.pluginsdk.ui.chat;

import android.content.Context;
import android.view.View;
import android.view.View.OnLongClickListener;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.e.a;

final class ah
  implements View.OnLongClickListener
{
  ah(ChatFooter paramChatFooter)
  {
  }

  public final boolean onLongClick(View paramView)
  {
    if (ChatFooter.h(this.fqG) != null)
    {
      String str = ChatFooter.h(this.fqG).ate();
      if (str != null)
        a.a(this.fqG.getContext(), this.fqG.getContext().getString(n.bef), str);
    }
    this.fqG.UY();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.ah
 * JD-Core Version:    0.6.2
 */