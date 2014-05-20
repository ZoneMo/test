package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class cu
  implements DialogInterface.OnClickListener
{
  cu(ct paramct)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    be.uA().a(145, this.grl.grj);
    ag localag = new ag(LoginIndepPass.d(this.grl.grj), 16, "", 0, "");
    be.uA().d(localag);
    LoginIndepPass localLoginIndepPass1 = this.grl.grj;
    LoginIndepPass localLoginIndepPass2 = this.grl.grj;
    this.grl.grj.getString(n.ber);
    LoginIndepPass.a(localLoginIndepPass1, h.a(localLoginIndepPass2, this.grl.grj.getString(n.byr), true, new cv(this, localag)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.cu
 * JD-Core Version:    0.6.2
 */