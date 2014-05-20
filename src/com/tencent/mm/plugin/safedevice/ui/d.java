package com.tencent.mm.plugin.safedevice.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.an.a;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.safedevice.a.b;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;

final class d
  implements MenuItem.OnMenuItemClickListener
{
  d(ModSafeDeviceNameUI paramModSafeDeviceNameUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    ModSafeDeviceNameUI.a(this.eae, ModSafeDeviceNameUI.a(this.eae).getText().toString());
    if (cj.hX(ModSafeDeviceNameUI.b(this.eae)))
      return true;
    this.eae.SM();
    b localb = new b(ModSafeDeviceNameUI.c(this.eae), ModSafeDeviceNameUI.b(this.eae), ModSafeDeviceNameUI.d(this.eae));
    be.uA().d(localb);
    ModSafeDeviceNameUI.a(this.eae, h.a(this.eae, a.m(this.eae, n.beu), true, new e(this, localb)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.d
 * JD-Core Version:    0.6.2
 */