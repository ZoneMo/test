package com.tencent.mm.ui.bindqq;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class j
  implements DialogInterface.OnCancelListener
{
  j(g paramg)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.gJv.onDetach();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.j
 * JD-Core Version:    0.6.2
 */