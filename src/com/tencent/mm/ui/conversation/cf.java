package com.tencent.mm.ui.conversation;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.MMAppMgr;

final class cf
  implements View.OnClickListener
{
  cf(NetWarnView paramNetWarnView, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    MMAppMgr.b(NetWarnView.b(this.haa), this.cLa, new cg(this), new ch(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.cf
 * JD-Core Version:    0.6.2
 */