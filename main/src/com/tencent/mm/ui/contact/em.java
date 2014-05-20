package com.tencent.mm.ui.contact;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class em
  implements MenuItem.OnMenuItemClickListener
{
  em(SendContactCardUI paramSendContactCardUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (SendContactCardUI.b(this.gVv))
      SendContactCardUI.c(this.gVv);
    while (true)
    {
      this.gVv.setResult(-1);
      this.gVv.finish();
      return true;
      SendContactCardUI.d(this.gVv);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.em
 * JD-Core Version:    0.6.2
 */