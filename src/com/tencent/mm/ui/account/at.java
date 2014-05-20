package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class at
  implements DialogInterface.OnCancelListener
{
  at(FacebookLoginUI paramFacebookLoginUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (FacebookLoginUI.a(this.gqc) != null)
      be.uA().c(FacebookLoginUI.a(this.gqc));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.at
 * JD-Core Version:    0.6.2
 */