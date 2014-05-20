package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.an;
import com.tencent.mm.n.ac;

final class jx
  implements DialogInterface.OnCancelListener
{
  jx(jw paramjw, an paraman)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.guf);
    be.uA().b(429, this.gug.gtZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.jx
 * JD-Core Version:    0.6.2
 */