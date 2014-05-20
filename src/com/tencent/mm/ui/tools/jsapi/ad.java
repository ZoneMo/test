package com.tencent.mm.ui.tools.jsapi;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.ui.applet.a;
import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.h;
import java.util.LinkedList;

final class ad
  implements r
{
  ad(p paramp, i parami)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    int i = 33;
    if (paramBoolean)
    {
      if (p.e(this.hpx) != null)
        p.e(this.hpx).dismiss();
      p localp = this.hpx;
      Context localContext = p.a(this.hpx);
      p.a(this.hpx).getString(n.ber);
      p.a(localp, h.a(localContext, p.a(this.hpx).getString(n.bIl), true, null));
      a locala = new a(p.a(this.hpx), this.hpx);
      LinkedList localLinkedList = new LinkedList();
      if (p.aOB() == null)
      {
        localLinkedList.add(Integer.valueOf(i));
        locala.e(this.dNE.getUsername(), localLinkedList);
      }
    }
    while (true)
    {
      p.l(this.hpx).dismiss();
      return;
      i = p.aOB().getInt("Contact_Scene", i);
      break;
      p.a(this.hpx, p.b(this.hpx), "add_contact:cancel", null);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.ad
 * JD-Core Version:    0.6.2
 */