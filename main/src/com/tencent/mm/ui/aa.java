package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.chatroom.a.g;
import com.tencent.mm.ui.base.h;

final class aa
  implements DialogInterface.OnClickListener
{
  aa(GrantRoomUI paramGrantRoomUI, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    g localg = new g(this.glw);
    GrantRoomUI localGrantRoomUI1 = this.glv;
    GrantRoomUI localGrantRoomUI2 = this.glv;
    this.glv.getString(2131167675);
    GrantRoomUI.a(localGrantRoomUI1, h.a(localGrantRoomUI2, "", true, new ab(this, localg)));
    be.uA().d(localg);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.aa
 * JD-Core Version:    0.6.2
 */