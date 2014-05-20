package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class dw
  implements DialogInterface.OnCancelListener
{
  dw(dv paramdv)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    RoomInfoUI.a(this.gpb.gpa, true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dw
 * JD-Core Version:    0.6.2
 */