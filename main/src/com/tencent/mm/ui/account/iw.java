package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.b;

final class iw
  implements DialogInterface.OnClickListener
{
  iw(RegByQQUI paramRegByQQUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RegByQQUI.h(this.gty);
    b.jdMethod_if(be.uv() + "," + this.gty.getClass().getName() + ",L400_100_signup," + be.ds("L400_100_signup") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.iw
 * JD-Core Version:    0.6.2
 */