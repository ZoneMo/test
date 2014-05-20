package com.tencent.mm.plugin.backup.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.tencent.mm.network.bm;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;

final class an
  implements View.OnClickListener
{
  an(BakChatUploadSelectUI paramBakChatUploadSelectUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (!bm.ac(this.cNp))
    {
      x localx = h.a(this.cNp, this.cNp.getString(2131166044) + BakChatUploadSelectUI.c(this.cNp).getText() + this.cNp.getString(2131166045), null, new ao(this), new ap(this));
      localx.setCancelable(false);
      localx.setCanceledOnTouchOutside(false);
      return;
    }
    BakChatUploadSelectUI.d(this.cNp);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.an
 * JD-Core Version:    0.6.2
 */