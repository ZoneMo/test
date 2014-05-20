package com.tencent.mm.ui.account;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;

final class bt
  implements DialogInterface.OnClickListener
{
  bt(LoginHistoryUI paramLoginHistoryUI, x paramx)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.ie("R400_100_login");
    Intent localIntent = new Intent();
    localIntent.putExtra("regsetinfo_binduin", LoginHistoryUI.f(this.grc).cxs);
    localIntent.putExtra("regsetinfo_pwd", LoginHistoryUI.f(this.grc).gro);
    localIntent.putExtra("regsetinfo_ismobile", 0);
    localIntent.putExtra("regsetinfo_ticket", ((i)this.cmw).zC());
    localIntent.putExtra("regsetinfo_NextControl", ((i)this.cmw).zE());
    localIntent.setClass(this.grc, RegSetInfoUI.class);
    this.grc.aal().startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bt
 * JD-Core Version:    0.6.2
 */