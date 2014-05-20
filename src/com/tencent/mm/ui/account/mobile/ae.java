package com.tencent.mm.ui.account.mobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.b;

final class ae
  implements DialogInterface.OnClickListener
{
  ae(ab paramab)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ab.a(this.gwa, ab.a(this.gwa).gqK + ab.a(this.gwa).gqL);
    b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L200_300," + be.ds("L200_300") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.ae
 * JD-Core Version:    0.6.2
 */