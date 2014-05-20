package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.c.a.dr;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;

final class ej
  implements DialogInterface.OnCancelListener
{
  ej(RoomInfoUI paramRoomInfoUI, dr paramdr)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    dr localdr = this.gpg;
    localdr.bOH.bOD = true;
    a.ayH().f(localdr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.ej
 * JD-Core Version:    0.6.2
 */