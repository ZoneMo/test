package com.tencent.mm.ui.friend;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.c.a.ei;
import com.tencent.mm.c.a.ek;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.b.f;

final class bp
  implements View.OnClickListener
{
  bp(InviteFriendUI paramInviteFriendUI)
  {
  }

  public final void onClick(View paramView)
  {
    ei localei = new ei();
    localei.bPh.bNK = 0;
    localei.bPh.bPj = (InviteFriendUI.b(this.hbF) + "@qqim");
    localei.bPh.bPk = InviteFriendUI.f(this.hbF);
    com.tencent.mm.sdk.b.a.ayH().f(localei);
    if (localei.bPi.bMh)
      com.tencent.mm.plugin.a.a.cHS.d(new Intent().putExtra("Chat_User", InviteFriendUI.b(this.hbF) + "@qqim"), this.hbF);
    this.hbF.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.bp
 * JD-Core Version:    0.6.2
 */