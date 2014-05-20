package com.tencent.mm.ui.conversation;

import android.view.MenuItem;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.h;

final class ba
  implements cd
{
  ba(MainUI paramMainUI)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return;
    case 4:
      MainUI.a(this.gZI, MainUI.t(this.gZI));
      return;
    case 5:
      aa.d("MicroMsg.MainUI", "placed to the top");
      be.uz().sx().ub(MainUI.t(this.gZI));
      h.an(this.gZI.aal(), this.gZI.getString(2131165608));
      return;
    case 6:
    }
    aa.d("MicroMsg.MainUI", "unplaced to the top");
    be.uz().sx().uc(MainUI.t(this.gZI));
    h.an(this.gZI.aal(), this.gZI.getString(2131165609));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.ba
 * JD-Core Version:    0.6.2
 */