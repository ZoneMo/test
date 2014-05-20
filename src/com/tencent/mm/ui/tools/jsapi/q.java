package com.tencent.mm.ui.tools.jsapi;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.model.au;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.plugin.webview.a.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

final class q
  implements au
{
  q(p paramp)
  {
  }

  public final void g(String paramString, boolean paramBoolean)
  {
    int i = 42;
    if (p.a(this.hpx) == null)
    {
      aa.w("MicroMsg.MsgHandler", "getNow callback, msghandler has already been detached!");
      p.a(this.hpx, p.b(this.hpx), "profile:fail", null);
      return;
    }
    if (p.c(this.hpx) != null)
      p.c(this.hpx).dismiss();
    i locali = be.uz().su().tO(paramString);
    if ((locali == null) || (locali.rj() <= 0))
      locali = be.uz().su().tL(paramString);
    if ((locali == null) || (locali.rj() <= 0))
      paramBoolean = false;
    while (!paramBoolean)
    {
      Context localContext1 = al.getContext();
      Context localContext2 = p.a(this.hpx);
      int j = n.bnm;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(3);
      arrayOfObject[1] = Integer.valueOf(-1);
      Toast.makeText(localContext1, localContext2.getString(j, arrayOfObject), 0).show();
      p.a(this.hpx, p.b(this.hpx), "profile:ok", null);
      return;
      paramString = locali.getUsername();
    }
    c.p(paramString, 3);
    af.wo().dY(paramString);
    Intent localIntent = new Intent();
    localIntent.addFlags(268435456);
    localIntent.putExtra("Contact_User", paramString);
    if (locali.aAp())
      if (p.aOB() != null)
        break label318;
    while (true)
    {
      m.dZN.j(10298, locali.getUsername() + "," + i);
      localIntent.putExtra("Contact_Scene", i);
      a.cHS.c(localIntent, p.a(this.hpx));
      break;
      label318: i = p.aOB().getInt("Contact_Scene", i);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.q
 * JD-Core Version:    0.6.2
 */