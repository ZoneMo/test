package com.tencent.mm.ui;

import android.os.Handler;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.applet.ContactListExpandPreference;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.c;

final class el
  implements Runnable
{
  el(RoomInfoUI paramRoomInfoUI)
  {
  }

  public final void run()
  {
    RoomInfoUI.a(this.gpa, be.uz().sA().ts(RoomInfoUI.b(this.gpa)));
    if (RoomInfoUI.c(this.gpa) == null)
    {
      aa.e("MicroMsg.RoomInfoUI", "member is null");
      return;
    }
    if (au.hX(RoomInfoUI.c(this.gpa).field_roomowner))
    {
      aa.e("MicroMsg.RoomInfoUI", "roomowner is null");
      return;
    }
    RoomInfoUI.p(this.gpa).sendEmptyMessage(0);
    RoomInfoUI.b(this.gpa, RoomInfoUI.c(this.gpa).field_roomowner.equals(v.th()));
    RoomInfoUI.e(this.gpa).qH(RoomInfoUI.c(this.gpa).field_roomowner);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.el
 * JD-Core Version:    0.6.2
 */