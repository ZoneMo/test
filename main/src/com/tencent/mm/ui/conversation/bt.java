package com.tencent.mm.ui.conversation;

import android.app.Activity;
import com.tencent.mm.compatible.g.k;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.ui.base.h;

final class bt
  implements Runnable
{
  bt(MainUI paramMainUI)
  {
  }

  public final void run()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Long.valueOf(MainUI.d(this.gZI).qh());
    arrayOfObject[1] = Boolean.valueOf(MainUI.e(this.gZI));
    arrayOfObject[2] = Integer.valueOf(MainUI.f(this.gZI).hashCode());
    aa.e("MicroMsg.MainUI", "dksord showProgressDlg t:%d initCurrently:%b initScene:%d", arrayOfObject);
    if (MainUI.e(this.gZI))
    {
      MainUI localMainUI = this.gZI;
      Activity localActivity = this.gZI.aal();
      this.gZI.getString(2131167675);
      MainUI.a(localMainUI, h.a(localActivity, this.gZI.getString(2131167727), false, new bu(this)));
      be.ut().azx();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bt
 * JD-Core Version:    0.6.2
 */