package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.s;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;

final class u
  implements DialogInterface.OnClickListener
{
  u(FacebookAuthUI paramFacebookAuthUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = this.gpS.getString(n.ber);
    String str2 = this.gpS.getString(n.bkk);
    FacebookAuthUI.a(this.gpS, ProgressDialog.show(this.gpS, str1, str2, true));
    FacebookAuthUI.d(this.gpS).setOnCancelListener(FacebookAuthUI.c(this.gpS));
    s locals = new s(s.cxn);
    be.uA().d(locals);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.u
 * JD-Core Version:    0.6.2
 */