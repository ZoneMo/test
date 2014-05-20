package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class s
  implements DialogInterface.OnCancelListener
{
  s(FacebookAuthUI paramFacebookAuthUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (FacebookAuthUI.a(this.gpS) != null)
      be.uA().c(FacebookAuthUI.a(this.gpS));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.s
 * JD-Core Version:    0.6.2
 */