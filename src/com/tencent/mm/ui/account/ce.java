package com.tencent.mm.ui.account;

import android.content.res.Resources;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.x.b;

final class ce
  implements MenuItem.OnMenuItemClickListener
{
  ce(LoginHistoryUI paramLoginHistoryUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (b.Bd())
    {
      String[] arrayOfString2 = new String[3];
      arrayOfString2[0] = this.grc.getResources().getString(n.bpR);
      arrayOfString2[1] = this.grc.getResources().getString(n.bpT);
      arrayOfString2[2] = this.grc.getResources().getString(n.bpQ);
      h.b(this.grc, null, arrayOfString2, null, LoginHistoryUI.e(this.grc));
      return true;
    }
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = this.grc.getResources().getString(n.bpR);
    arrayOfString1[1] = this.grc.getResources().getString(n.bpT);
    h.b(this.grc, null, arrayOfString1, null, LoginHistoryUI.e(this.grc));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ce
 * JD-Core Version:    0.6.2
 */