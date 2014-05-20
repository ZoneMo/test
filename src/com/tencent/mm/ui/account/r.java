package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.aj;
import com.tencent.mm.n.ac;

final class r
  implements DialogInterface.OnCancelListener
{
  r(EmailVerifyUI paramEmailVerifyUI, aj paramaj)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.gpN);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.r
 * JD-Core Version:    0.6.2
 */