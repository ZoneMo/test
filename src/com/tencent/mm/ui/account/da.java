package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n.ac;

final class da
  implements DialogInterface.OnCancelListener
{
  da(LoginIndepPass paramLoginIndepPass, i parami)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.grd);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.da
 * JD-Core Version:    0.6.2
 */