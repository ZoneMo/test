package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.res.Resources;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;
import java.util.ArrayList;
import java.util.List;

final class l
  implements MenuItem.OnMenuItemClickListener
{
  l(WalletBankcardDetailUI paramWalletBankcardDetailUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    int i = 0;
    if ((com.tencent.mm.plugin.wallet.c.c.anX().aog()) && (WalletBankcardDetailUI.a(this.eYh).anf()));
    boolean bool2;
    ArrayList localArrayList2;
    for (boolean bool1 = true; ; bool1 = false)
    {
      bool2 = ((Boolean)be.uz().sr().get(196616, Boolean.valueOf(false))).booleanValue();
      if ((com.tencent.mm.plugin.wallet.c.c.anX().aoa().size() <= 1) || (WalletBankcardDetailUI.a(this.eYh).eWT.equals(WalletBankcardDetailUI.b(this.eYh))))
        break label211;
      localArrayList2 = new ArrayList();
      String[] arrayOfString = this.eYh.getResources().getStringArray(com.tencent.mm.c.Zx);
      while (i < arrayOfString.length)
      {
        localArrayList2.add(arrayOfString[i]);
        i++;
      }
    }
    if ((bool1) && (!bool2))
      localArrayList2.add(this.eYh.getString(com.tencent.mm.n.bGp));
    h.c(this.eYh, null, this.eYh.getResources().getStringArray(com.tencent.mm.c.Zx), this.eYh.getString(com.tencent.mm.n.bGn), new m(this, bool1, bool2));
    return true;
    label211: ArrayList localArrayList1 = new ArrayList();
    if ((bool1) && (!bool2))
      localArrayList1.add(this.eYh.getString(com.tencent.mm.n.bGp));
    h.c(this.eYh, null, (String[])localArrayList1.toArray(new String[localArrayList1.size()]), this.eYh.getString(com.tencent.mm.n.bGn), new n(this, bool1, bool2));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.l
 * JD-Core Version:    0.6.2
 */