package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n.ac;

final class bq
  implements DialogInterface.OnCancelListener
{
  bq(LoginHistoryUI paramLoginHistoryUI, i parami)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.grd);
    be.uA().b(380, this.grc);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bq
 * JD-Core Version:    0.6.2
 */