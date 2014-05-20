package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.c.a.gy;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.k;

final class dy
  implements DialogInterface.OnClickListener
{
  dy(RoomInfoUI paramRoomInfoUI, boolean paramBoolean)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((RoomInfoUI.b(this.gpa) == null) || (RoomInfoUI.b(this.gpa).length() <= 0))
    {
      aa.e("MicroMsg.RoomInfoUI", "quitChatRoom : invalid args");
      return;
    }
    if (this.gpc)
    {
      gy localgy = new gy();
      localgy.bQS.bQV = true;
      a.ayH().f(localgy);
    }
    if (!be.uz().su().tP(RoomInfoUI.b(this.gpa)))
    {
      aa.e("MicroMsg.RoomInfoUI", "quitChatRoom : room[" + RoomInfoUI.b(this.gpa) + "] is not exist");
      return;
    }
    RoomInfoUI.l(this.gpa);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dy
 * JD-Core Version:    0.6.2
 */