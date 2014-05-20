package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n.ac;

final class ew
  implements DialogInterface.OnCancelListener
{
  ew(MobileVerifyUIOld paramMobileVerifyUIOld, ag paramag)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.grm);
    be.uA().b(145, this.gsa);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ew
 * JD-Core Version:    0.6.2
 */