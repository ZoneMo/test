package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.b;

final class dk
  implements DialogInterface.OnClickListener
{
  dk(LoginUI paramLoginUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.jdMethod_if(be.uv() + "," + this.grz.getClass().getName() + ",R400_100_login," + be.ds("R400_100_login") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.dk
 * JD-Core Version:    0.6.2
 */