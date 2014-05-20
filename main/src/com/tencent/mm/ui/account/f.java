package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class f
  implements DialogInterface.OnCancelListener
{
  f(BindFacebookUI paramBindFacebookUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (BindFacebookUI.a(this.gpB) != null)
      be.uA().c(BindFacebookUI.a(this.gpB));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.f
 * JD-Core Version:    0.6.2
 */