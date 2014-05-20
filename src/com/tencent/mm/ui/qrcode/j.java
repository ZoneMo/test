package com.tencent.mm.ui.qrcode;

import android.app.Activity;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ak;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.ui.account.fm;
import com.tencent.mm.ui.base.h;

final class j
  implements MenuItem.OnMenuItemClickListener
{
  j(ShareToQQUI paramShareToQQUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    ShareToQQUI.a(this.hdz);
    String str1;
    boolean bool1;
    boolean bool2;
    if ((ShareToQQUI.b(this.hdz) == 2) || (ShareToQQUI.b(this.hdz) == 1))
    {
      str1 = ShareToQQUI.c(this.hdz).getText().toString();
      if (ShareToQQUI.b(this.hdz) == 1)
      {
        bool1 = true;
        int i = ShareToQQUI.b(this.hdz);
        bool2 = false;
        if (i == 2)
          bool2 = true;
      }
    }
    for (ak localak = new ak(str1, bool1, bool2); ; localak = new ak(ShareToQQUI.c(this.hdz).getText().toString()))
    {
      be.uA().d(localak);
      ShareToQQUI localShareToQQUI = this.hdz;
      Activity localActivity = this.hdz.aal();
      this.hdz.getString(2131167675);
      ShareToQQUI.a(localShareToQQUI, h.a(localActivity, this.hdz.getString(2131165599), true, new l(this, localak)));
      return true;
      bool1 = false;
      break;
      if (ShareToQQUI.b(this.hdz) != 4)
        break label298;
      long l = au.a((Long)be.uz().sr().get(65831));
      String str2 = au.hW((String)be.uz().sr().get(65830));
      if ((au.N(l) > 86400000L) && (str2.length() > 0))
      {
        com.tencent.mm.ui.a.a.e locale = new com.tencent.mm.ui.a.a.e("290293790992170");
        locale.xh(str2);
        new fm(locale, new k(this)).aFV();
      }
    }
    label298: h.c(this.hdz.aal(), 2131166658, 2131167675);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.j
 * JD-Core Version:    0.6.2
 */