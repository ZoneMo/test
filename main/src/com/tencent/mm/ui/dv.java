package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.bv;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

final class dv
  implements DialogInterface.OnClickListener
{
  dv(RoomInfoUI paramRoomInfoUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RoomInfoUI.a(this.gpa, false);
    RoomInfoUI localRoomInfoUI = this.gpa;
    this.gpa.getString(2131167675);
    ch localch = h.a(localRoomInfoUI, this.gpa.getString(2131167726), true, new dw(this));
    bv.a(RoomInfoUI.i(this.gpa).getUsername(), new dx(this, localch));
    RoomInfoUI.k(this.gpa);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dv
 * JD-Core Version:    0.6.2
 */