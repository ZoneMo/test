package com.tencent.mm.ui.contact;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ae.a;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;
import java.io.File;

final class bj
  implements MenuItem.OnMenuItemClickListener
{
  bj(ContactRemarkImagePreviewUI paramContactRemarkImagePreviewUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (!ContactRemarkImagePreviewUI.a(this.gTx))
    {
      a locala = new a(ContactRemarkImagePreviewUI.b(this.gTx));
      be.uA().d(locala);
      ContactRemarkImagePreviewUI localContactRemarkImagePreviewUI1 = this.gTx;
      ContactRemarkImagePreviewUI localContactRemarkImagePreviewUI2 = this.gTx;
      this.gTx.getString(2131167675);
      ContactRemarkImagePreviewUI.a(localContactRemarkImagePreviewUI1, h.a(localContactRemarkImagePreviewUI2, this.gTx.getString(2131166263), false, new bk(this)));
      return false;
    }
    new File(ContactRemarkImagePreviewUI.c(this.gTx)).delete();
    ContactRemarkImagePreviewUI.a(this.gTx, true);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bj
 * JD-Core Version:    0.6.2
 */