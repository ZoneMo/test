package com.tencent.mm.platformtools;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.storage.e;

final class ai
  implements DialogInterface.OnClickListener
{
  ai(Runnable paramRunnable)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    be.uz().sr().set(12322, Boolean.valueOf(false));
    ag.f(false, false);
    if (this.cGT != null)
      this.cGT.run();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.ai
 * JD-Core Version:    0.6.2
 */