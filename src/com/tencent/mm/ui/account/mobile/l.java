package com.tencent.mm.ui.account.mobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.b;

final class l
  implements DialogInterface.OnClickListener
{
  l(i parami)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.b(true, be.uv() + "," + getClass().getName() + ",F200_200," + be.ds("F200_200") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.l
 * JD-Core Version:    0.6.2
 */