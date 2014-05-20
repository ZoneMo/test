package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.plugin.a.b;

final class fs
  implements DialogInterface.OnClickListener
{
  fs(RegByEmailUI paramRegByEmailUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.ie(RegByEmailUI.f(this.gsr));
    this.gsr.SM();
    this.gsr.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fs
 * JD-Core Version:    0.6.2
 */