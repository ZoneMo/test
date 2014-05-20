package com.tencent.mm.ui.account;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class hv
  implements MenuItem.OnMenuItemClickListener
{
  hv(RegByMobileSetNickUI paramRegByMobileSetNickUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str1 = RegByMobileSetNickUI.a(this.gsU).getText().toString().trim();
    if ((str1 == null) || (str1.length() <= 0))
    {
      h.c(this.gsU, n.bEc, n.bvG);
      return true;
    }
    this.gsU.SM();
    String str2 = this.gsU.getIntent().getExtras().getString("regbymobile_pwd");
    String str3 = this.gsU.getIntent().getExtras().getString("regbymobile_ticket");
    ad localad = new ad("", str2, str1, 0, "", RegByMobileSetNickUI.b(this.gsU), str3, 4);
    be.uA().d(localad);
    RegByMobileSetNickUI localRegByMobileSetNickUI1 = this.gsU;
    RegByMobileSetNickUI localRegByMobileSetNickUI2 = this.gsU;
    this.gsU.getString(n.ber);
    RegByMobileSetNickUI.a(localRegByMobileSetNickUI1, h.a(localRegByMobileSetNickUI2, this.gsU.getString(n.bvS), true, new hw(this, localad)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hv
 * JD-Core Version:    0.6.2
 */