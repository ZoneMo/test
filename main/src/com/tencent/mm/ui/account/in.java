package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class in
  implements MenuItem.OnMenuItemClickListener
{
  in(RegByQQAuthUI paramRegByQQAuthUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    RegByQQAuthUI.a(this.gtu, RegByQQAuthUI.a(this.gtu).getText().toString().trim());
    if (RegByQQAuthUI.b(this.gtu).equals(""))
    {
      h.c(this.gtu, n.bEc, n.bdI);
      return true;
    }
    ad localad = new ad("", RegByQQAuthUI.c(this.gtu), RegByQQAuthUI.b(this.gtu), RegByQQAuthUI.d(this.gtu), "", "", RegByQQAuthUI.e(this.gtu), 2);
    be.uA().d(localad);
    RegByQQAuthUI localRegByQQAuthUI1 = this.gtu;
    RegByQQAuthUI localRegByQQAuthUI2 = this.gtu;
    this.gtu.getString(n.ber);
    RegByQQAuthUI.a(localRegByQQAuthUI1, h.a(localRegByQQAuthUI2, this.gtu.getString(n.bvS), true, new io(this, localad)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.in
 * JD-Core Version:    0.6.2
 */