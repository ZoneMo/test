package com.tencent.mm.plugin.backup.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;

final class k
  implements View.OnClickListener
{
  k(BakChatRecoverCheckUI paramBakChatRecoverCheckUI)
  {
  }

  public final void onClick(View paramView)
  {
    x localx = h.a(this.cMg.aal(), this.cMg.getString(2131166065), "", new l(this), null);
    localx.setCanceledOnTouchOutside(false);
    localx.setCancelable(false);
    localx.mQ(16);
    localx.aGG();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.k
 * JD-Core Version:    0.6.2
 */