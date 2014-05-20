package com.tencent.mm.plugin.backup.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import com.tencent.mm.plugin.backup.model.j;
import com.tencent.mm.ui.base.h;

final class aq extends j
{
  aq(BakChatUploadSelectUI paramBakChatUploadSelectUI)
  {
  }

  public final void run()
  {
    if (this.cKe)
    {
      BakChatUploadSelectUI.e(this.cNp);
      return;
    }
    if (BakChatUploadSelectUI.a(this.cNp) != null)
      BakChatUploadSelectUI.a(this.cNp).Ig();
    Activity localActivity = this.cNp.aal();
    String str = this.cNp.aal().getString(2131165191);
    ar localar = new ar(this);
    com.tencent.mm.ui.base.x localx = h.a(localActivity, str, localActivity.getResources().getDrawable(2130837937), localar);
    localx.setCanceledOnTouchOutside(false);
    localx.mQ(16);
    localx.aGG();
    localx.setCancelable(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.aq
 * JD-Core Version:    0.6.2
 */