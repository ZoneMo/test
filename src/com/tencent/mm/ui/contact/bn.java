package com.tencent.mm.ui.contact;

import android.view.MenuItem;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.ui.base.cd;

final class bn
  implements cd
{
  bn(bl parambl)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      s.f(ContactRemarkImagePreviewUI.c(this.gTz.gTx), this.gTz.gTx);
      return;
    case 1:
    }
    ContactRemarkImagePreviewUI.d(this.gTz.gTx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bn
 * JD-Core Version:    0.6.2
 */