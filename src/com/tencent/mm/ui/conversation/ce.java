package com.tencent.mm.ui.conversation;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.ba;

final class ce
  implements View.OnClickListener
{
  ce(NetWarnView paramNetWarnView, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      ba.p(NetWarnView.b(this.haa), this.cLa);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.ce
 * JD-Core Version:    0.6.2
 */