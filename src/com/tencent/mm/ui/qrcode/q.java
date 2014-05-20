package com.tencent.mm.ui.qrcode;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class q
  implements MenuItem.OnMenuItemClickListener
{
  q(ShowQRCodeStep1UI paramShowQRCodeStep1UI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hdD.SM();
    this.hdD.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.q
 * JD-Core Version:    0.6.2
 */