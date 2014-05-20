package com.tencent.mm.ui.friend;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.p;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.ui.base.h;

final class az
  implements DialogInterface.OnClickListener
{
  az(FindMContactInviteUI paramFindMContactInviteUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (FindMContactInviteUI.j(this.hbp) == 1)
      b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R300_500_QQ," + be.ds("R300_500_QQ") + ",3");
    while (true)
    {
      be.uA().a(432, FindMContactInviteUI.a(this.hbp, new ba(this)));
      FindMContactInviteUI localFindMContactInviteUI = this.hbp;
      Activity localActivity = this.hbp.aal();
      this.hbp.getString(n.ber);
      FindMContactInviteUI.a(localFindMContactInviteUI, h.a(localActivity, this.hbp.getString(n.bmj), true, new bb(this)));
      FindMContactInviteUI.b(this.hbp).fy(FindMContactInviteUI.m(this.hbp));
      return;
      b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R300_500_phone," + be.ds("R300_500_phone") + ",3");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.az
 * JD-Core Version:    0.6.2
 */