package com.tencent.mm.plugin.safedevice.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.safedevice.a.e;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;

final class ag
  implements MenuItem.OnMenuItemClickListener
{
  ag(SecurityAccountVerifyUI paramSecurityAccountVerifyUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str = SecurityAccountVerifyUI.g(this.eaJ).getText().toString().trim();
    if (cj.hX(str))
    {
      h.c(this.eaJ, n.bfC, n.ber);
      return true;
    }
    this.eaJ.SM();
    SecurityAccountVerifyUI.a(this.eaJ, e.aG(this.eaJ));
    SecurityAccountVerifyUI.b(this.eaJ, e.Zs());
    if (!SecurityAccountVerifyUI.h(this.eaJ));
    for (Object localObject = new com.tencent.mm.modelfriend.ag(SecurityAccountVerifyUI.d(this.eaJ), str, "", SecurityAccountVerifyUI.e(this.eaJ), SecurityAccountVerifyUI.i(this.eaJ), SecurityAccountVerifyUI.j(this.eaJ)); ; localObject = new ai(SecurityAccountVerifyUI.d(this.eaJ), 11, str, "", SecurityAccountVerifyUI.i(this.eaJ), SecurityAccountVerifyUI.j(this.eaJ)))
    {
      be.uA().d((x)localObject);
      SecurityAccountVerifyUI localSecurityAccountVerifyUI1 = this.eaJ;
      SecurityAccountVerifyUI localSecurityAccountVerifyUI2 = this.eaJ;
      this.eaJ.getString(n.ber);
      SecurityAccountVerifyUI.a(localSecurityAccountVerifyUI1, h.a(localSecurityAccountVerifyUI2, this.eaJ.getString(n.bfu), true, new ah(this, (x)localObject)));
      return true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.ag
 * JD-Core Version:    0.6.2
 */