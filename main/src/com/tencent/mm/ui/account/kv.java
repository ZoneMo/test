package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;

final class kv
  implements MenuItem.OnMenuItemClickListener
{
  kv(SetPwdUI paramSetPwdUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    SetPwdUI.a(this.guo, this.guo.aFW());
    SetPwdUI.b(this.guo, this.guo.aFX());
    if (cj.hX(SetPwdUI.a(this.guo)))
      return true;
    if (!SetPwdUI.a(this.guo).equals(SetPwdUI.b(this.guo)))
    {
      this.guo.a(ky.guq);
      return true;
    }
    if (SetPwdUI.a(this.guo).length() > 16)
    {
      this.guo.a(ky.gur);
      return true;
    }
    if (cj.ic(SetPwdUI.a(this.guo)))
    {
      h.c(this.guo, n.bvu, n.bvG);
      return true;
    }
    if (!cj.hV(SetPwdUI.a(this.guo)))
    {
      if ((SetPwdUI.a(this.guo).length() >= 4) && (SetPwdUI.a(this.guo).length() < 9))
      {
        this.guo.a(ky.gut);
        return true;
      }
      this.guo.a(ky.gus);
      return true;
    }
    SetPwdUI.a(this.guo);
    SetPwdUI.b(this.guo);
    SetPwdUI.aGk();
    this.guo.SM();
    x localx = this.guo.aZ(SetPwdUI.a(this.guo), this.guo.cgp);
    be.uA().d(localx);
    SetPwdUI localSetPwdUI1 = this.guo;
    SetPwdUI localSetPwdUI2 = this.guo;
    SetPwdUI localSetPwdUI3 = this.guo;
    this.guo.getString(n.ber);
    SetPwdUI.a(localSetPwdUI1, localSetPwdUI2.a(localSetPwdUI3, this.guo.getString(n.buU), new kw(this, localx)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.kv
 * JD-Core Version:    0.6.2
 */