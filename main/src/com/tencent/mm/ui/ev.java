package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.chatroom.a.g;
import com.tencent.mm.ui.base.h;

final class ev
  implements DialogInterface.OnClickListener
{
  ev(RoomRightUI paramRoomRightUI, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    g localg = new g(this.glw);
    RoomRightUI localRoomRightUI1 = this.gpl;
    RoomRightUI localRoomRightUI2 = this.gpl;
    this.gpl.getString(2131167675);
    RoomRightUI.a(localRoomRightUI1, h.a(localRoomRightUI2, "", true, new ew(this, localg)));
    be.uA().d(localg);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.ev
 * JD-Core Version:    0.6.2
 */