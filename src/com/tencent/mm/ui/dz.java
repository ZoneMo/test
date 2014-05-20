package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class dz
  implements DialogInterface.OnCancelListener
{
  dz(RoomInfoUI paramRoomInfoUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    RoomInfoUI.a(this.gpa, true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dz
 * JD-Core Version:    0.6.2
 */