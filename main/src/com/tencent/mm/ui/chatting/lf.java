package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Resources;
import android.view.MenuItem;
import com.tencent.mm.ai.q;
import com.tencent.mm.ai.v;
import com.tencent.mm.model.ct;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.transmit.l;

final class lf
  implements cd
{
  lf(ak paramak, Context paramContext)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    String str = paramMenuItem.getTitle();
    q localq = v.hh(this.ctu.ot());
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = str;
    arrayOfObject[1] = this.ctu.ot();
    aa.d("MicroMsg.LongClickBrandServiceHelper", "connector click[video]: to[%s] imgPath[%s]", arrayOfObject);
    l locall = new l();
    Context localContext = this.cGV;
    this.cGV.getResources().getString(2131167675);
    ch localch = h.a(localContext, this.cGV.getResources().getString(2131167678), true, new lg(this, locall));
    locall.context = this.cGV;
    locall.rD = this.ctu.ot();
    locall.dID = localch;
    locall.bPx = str;
    locall.hrl = localq.DQ();
    locall.cAX = localq.DO();
    locall.execute(new Object[0]);
    ct.vB().a(ct.cjR, null);
    h.an(this.cGV, this.cGV.getString(2131167704));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.lf
 * JD-Core Version:    0.6.2
 */