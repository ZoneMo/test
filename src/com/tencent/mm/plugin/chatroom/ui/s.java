package com.tencent.mm.plugin.chatroom.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class s
  implements DialogInterface.OnCancelListener
{
  s(RoomUpgradeUI paramRoomUpgradeUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (RoomUpgradeUI.h(this.cWW) != null)
    {
      be.uA().c(RoomUpgradeUI.h(this.cWW));
      RoomUpgradeUI.i(this.cWW);
    }
    this.cWW.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.s
 * JD-Core Version:    0.6.2
 */