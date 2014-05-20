package com.tencent.mm.ui.account.mobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cm;
import com.tencent.mm.plugin.a.b;

final class cr
  implements DialogInterface.OnClickListener
{
  cr(cn paramcn)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    cn.a(this.gwJ).finish();
    if (cm.vs().vt() > 0)
    {
      b.ie(cn.a(this.gwJ).eaA);
      b.b(false, be.uv() + "," + getClass().getName() + ",RE200_300," + be.ds("RE200_300") + ",2");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.cr
 * JD-Core Version:    0.6.2
 */