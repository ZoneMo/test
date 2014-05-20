package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.b;

final class gs
  implements DialogInterface.OnClickListener
{
  gs(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.ie("RE200_100");
    b.b(false, be.uv() + "," + this.gsL.getClass().getName() + ",RE200_200," + be.ds("RE200_200") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.gs
 * JD-Core Version:    0.6.2
 */