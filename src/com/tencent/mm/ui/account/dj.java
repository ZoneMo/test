package com.tencent.mm.ui.account;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;

final class dj
  implements DialogInterface.OnClickListener
{
  dj(LoginUI paramLoginUI, x paramx)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.ie("R400_100_login");
    Intent localIntent = new Intent();
    localIntent.putExtra("regsetinfo_binduin", LoginUI.d(this.grz).cxs);
    localIntent.putExtra("regsetinfo_pwd", LoginUI.d(this.grz).gro);
    localIntent.putExtra("regsetinfo_ismobile", 0);
    localIntent.putExtra("regsetinfo_ticket", LoginUI.h(this.grz));
    localIntent.putExtra("regsetinfo_NextControl", ((i)this.cmw).zE());
    localIntent.setClass(this.grz, RegSetInfoUI.class);
    this.grz.aal().startActivity(localIntent);
    b.jdMethod_if(be.uv() + "," + this.grz.getClass().getName() + ",R400_100_login," + be.ds("R400_100_login") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.dj
 * JD-Core Version:    0.6.2
 */