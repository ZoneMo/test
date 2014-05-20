package com.tencent.mm.plugin.chatroom.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.v;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.z;

final class p
  implements View.OnClickListener
{
  p(RoomUpgradeUI paramRoomUpgradeUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (RoomUpgradeUI.e(this.cWW).getVisibility() == 0)
    {
      Intent localIntent = new Intent();
      RoomUpgradeUI localRoomUpgradeUI1 = this.cWW;
      RoomUpgradeUI localRoomUpgradeUI2 = this.cWW;
      int i = n.bgB;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = z.azj();
      RoomUpgradeUI.a(localRoomUpgradeUI1, localRoomUpgradeUI2.getString(i, arrayOfObject));
      localIntent.putExtra("rawUrl", RoomUpgradeUI.f(this.cWW));
      localIntent.putExtra("geta8key_username", v.th());
      localIntent.putExtra("showShare", false);
      a.a(this.cWW, "webview", "com.tencent.mm.ui.tools.WebViewUI", localIntent, 500);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.p
 * JD-Core Version:    0.6.2
 */