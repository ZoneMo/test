package com.tencent.mm.ui.contact;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class bo
  implements MenuItem.OnMenuItemClickListener
{
  bo(ContactRemarkImagePreviewUI paramContactRemarkImagePreviewUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    ContactRemarkImagePreviewUI.a(this.gTx, false);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bo
 * JD-Core Version:    0.6.2
 */