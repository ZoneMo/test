package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.aj;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class m
  implements DialogInterface.OnClickListener
{
  m(l paraml)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aj localaj = new aj(EmailVerifyUI.a(this.gpM.gpL), EmailVerifyUI.b(this.gpM.gpL));
    be.uA().d(localaj);
    EmailVerifyUI localEmailVerifyUI1 = this.gpM.gpL;
    EmailVerifyUI localEmailVerifyUI2 = this.gpM.gpL;
    this.gpM.gpL.getString(com.tencent.mm.n.ber);
    EmailVerifyUI.a(localEmailVerifyUI1, h.a(localEmailVerifyUI2, this.gpM.gpL.getString(com.tencent.mm.n.bvo), true, new n(this, localaj)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.m
 * JD-Core Version:    0.6.2
 */