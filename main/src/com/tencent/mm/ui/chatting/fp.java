package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;

final class fp
  implements View.OnClickListener
{
  fp(fn paramfn)
  {
  }

  public final void onClick(View paramView)
  {
    if (fn.a(this.gOz).XS() == 0)
    {
      aa.w("MicroMsg.ChattingMoreBtnBarHelper", "ignore click del btn, selected items count is 0");
      return;
    }
    ChattingUI localChattingUI = fn.b(this.gOz);
    h.a(localChattingUI, localChattingUI.getString(2131165697), "", localChattingUI.getString(2131165698), localChattingUI.getString(2131167681), new fq(this, localChattingUI), null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fp
 * JD-Core Version:    0.6.2
 */