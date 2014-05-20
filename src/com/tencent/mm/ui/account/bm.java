package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.b;

final class bm
  implements DialogInterface.OnClickListener
{
  bm(LoginByMobileUI paramLoginByMobileUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.jdMethod_if(be.uv() + "," + this.gqO.getClass().getName() + ",L200_300," + be.ds("L200_300") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bm
 * JD-Core Version:    0.6.2
 */