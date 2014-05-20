package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class ex
  implements MenuItem.OnMenuItemClickListener
{
  ex(SnsAddressUI paramSnsAddressUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gVF.finish();
    if (!this.gVF.getIntent().getBooleanExtra("stay_in_wechat", true))
      this.gVF.moveTaskToBack(true);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ex
 * JD-Core Version:    0.6.2
 */