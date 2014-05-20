package com.tencent.mm.ui;

import com.tencent.mm.model.bv;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.v;

final class dq
  implements v
{
  dq(RoomInfoDetailUI paramRoomInfoDetailUI)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    RoomInfoDetailUI.a(this.goM, false);
    RoomInfoDetailUI localRoomInfoDetailUI = this.goM;
    this.goM.getString(2131167675);
    ch localch = h.a(localRoomInfoDetailUI, this.goM.getString(2131167726), true, new dr(this));
    bv.a(RoomInfoDetailUI.a(this.goM).getUsername(), new ds(this, localch));
    RoomInfoDetailUI.c(this.goM);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dq
 * JD-Core Version:    0.6.2
 */