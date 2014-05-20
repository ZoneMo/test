package com.tencent.mm.ui;

import com.tencent.mm.model.au;

final class em
  implements au
{
  em(RoomInfoUI paramRoomInfoUI)
  {
  }

  public final void g(String paramString, boolean paramBoolean)
  {
    if ((paramBoolean) && (RoomInfoUI.b(this.gpa).equals(paramString)))
      new Thread(new en(this, paramString)).start();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.em
 * JD-Core Version:    0.6.2
 */