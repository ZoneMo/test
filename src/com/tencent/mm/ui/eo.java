package com.tencent.mm.ui;

import com.tencent.mm.model.ar;
import com.tencent.mm.model.at;
import com.tencent.mm.model.au;
import com.tencent.mm.storage.b;

final class eo
  implements Runnable
{
  eo(RoomInfoUI paramRoomInfoUI, au paramau)
  {
  }

  public final void run()
  {
    ar.tZ().a(RoomInfoUI.c(this.gpa).field_chatroomname, this.gpi);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.eo
 * JD-Core Version:    0.6.2
 */