package com.tencent.mm.plugin.chatroom.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.v;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.z;

final class k
  implements View.OnClickListener
{
  k(RoomUpgradeResultUI paramRoomUpgradeResultUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    RoomUpgradeResultUI localRoomUpgradeResultUI = this.cWM;
    int i = n.bgB;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = z.azj();
    localIntent.putExtra("rawUrl", localRoomUpgradeResultUI.getString(i, arrayOfObject));
    localIntent.putExtra("geta8key_username", v.th());
    a.m(this.cWM, "webview", "com.tencent.mm.ui.tools.WebViewUI");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.k
 * JD-Core Version:    0.6.2
 */