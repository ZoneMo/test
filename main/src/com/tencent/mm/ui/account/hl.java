package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.b;

final class hl
  implements DialogInterface.OnClickListener
{
  hl(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (RegByMobileRegUI.m(this.gsP) == 0)
      b.b(true, be.uv() + "," + this.gsP.getClass().getName() + ",R200_200," + be.ds("R200_200") + ",2");
    while (RegByMobileRegUI.m(this.gsP) != 2)
      return;
    b.b(true, be.uv() + "," + this.gsP.getClass().getName() + ",F200_200," + be.ds("F200_200") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hl
 * JD-Core Version:    0.6.2
 */