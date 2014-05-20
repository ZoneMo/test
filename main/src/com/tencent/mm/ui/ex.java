package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.LinkedList;

final class ex
  implements DialogInterface.OnClickListener
{
  ex(RoomRightUI paramRoomRightUI, LinkedList paramLinkedList)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RoomRightUI.a(this.gpl, this.gpn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.ex
 * JD-Core Version:    0.6.2
 */