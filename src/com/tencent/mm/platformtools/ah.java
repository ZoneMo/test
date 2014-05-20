package com.tencent.mm.platformtools;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.AddrBookObserver;
import com.tencent.mm.storage.e;

final class ah
  implements DialogInterface.OnClickListener
{
  ah(Activity paramActivity, Runnable paramRunnable)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    be.uz().sr().set(12322, Boolean.valueOf(true));
    ag.f(true, false);
    AddrBookObserver.N(this.bLc);
    if (this.cGT != null)
      this.cGT.run();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.ah
 * JD-Core Version:    0.6.2
 */