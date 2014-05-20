package com.tencent.mm.ui;

import android.view.View;
import com.tencent.mm.ui.b.a;
import com.tencent.mm.ui.base.preference.b;

final class ep
  implements Runnable
{
  ep(RoomInfoUI paramRoomInfoUI, int paramInt)
  {
  }

  public final void run()
  {
    View localView = ((b)RoomInfoUI.d(this.gpa)).a(this.gpj, this.gpa.getListView());
    if (localView != null)
      a.c(this.gpa.aal(), localView);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.ep
 * JD-Core Version:    0.6.2
 */