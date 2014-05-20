package com.tencent.mm.plugin.backup.ui;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;

final class ag
  implements View.OnClickListener
{
  ag(BakChatUI paramBakChatUI)
  {
  }

  public final void onClick(View paramView)
  {
    if ((BakChatUI.b(this.cNe)) && (d.Go()))
    {
      BakChatUI.c(this.cNe);
      return;
    }
    if (be.uA().wS() <= 0)
    {
      x localx = h.a(this.cNe, this.cNe.getString(2131166019), this.cNe.getResources().getDrawable(2130837937), new ah(this));
      localx.setCanceledOnTouchOutside(false);
      localx.setCancelable(false);
      localx.mQ(16);
      localx.aGG();
      return;
    }
    BakChatUI.e(this.cNe);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.ag
 * JD-Core Version:    0.6.2
 */