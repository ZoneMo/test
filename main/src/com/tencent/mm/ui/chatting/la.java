package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.MenuItem;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.z.f;

final class la
  implements cd
{
  la(String paramString, Context paramContext)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    String str = paramMenuItem.getTitle();
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = str;
    arrayOfObject1[1] = this.exj;
    aa.d("MicroMsg.LongClickBrandServiceHelper", "connector click[text]: to[%s] text[%s]", arrayOfObject1);
    f localf = new f(str, this.exj, w.dd(str));
    be.uA().d(localf);
    m localm = m.dZN;
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = Integer.valueOf(1);
    arrayOfObject2[1] = Integer.valueOf(1);
    arrayOfObject2[2] = str;
    localm.d(10424, arrayOfObject2);
    h.an(this.cGV, this.cGV.getString(2131167704));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.la
 * JD-Core Version:    0.6.2
 */