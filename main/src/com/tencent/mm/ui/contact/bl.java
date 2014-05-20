package com.tencent.mm.ui.contact;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ui.tools.dl;

final class bl
  implements MenuItem.OnMenuItemClickListener
{
  bl(ContactRemarkImagePreviewUI paramContactRemarkImagePreviewUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    dl localdl = new dl(this.gTx);
    localdl.a(new bm(this));
    localdl.b(new bn(this));
    localdl.cB();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bl
 * JD-Core Version:    0.6.2
 */