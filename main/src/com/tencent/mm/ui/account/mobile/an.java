package com.tencent.mm.ui.account.mobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.b;

final class an
  implements DialogInterface.OnClickListener
{
  an(ah paramah)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ah.a(this.gwb);
    b.b(true, be.uv() + "," + getClass().getName() + ",R200_200," + be.ds("R200_200") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.an
 * JD-Core Version:    0.6.2
 */