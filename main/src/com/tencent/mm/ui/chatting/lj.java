package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.MenuItem;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.u;
import com.tencent.mm.ui.base.cd;

final class lj
  implements cd
{
  lj(ak paramak, Context paramContext)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    String str1 = paramMenuItem.getTitle();
    String str2 = u.uk(this.ctu.getContent()).yK();
    if ((str2 == null) || (str2.endsWith("-1")))
      str2 = this.ctu.ot();
    if (str2 == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptEmojiConnector: filePath is null");
      return;
    }
    aa.d("MicroMsg.LongClickBrandServiceHelper", "connector click[emoji]: to[%s] filePath[%s]", new Object[] { str1, str2 });
    if (com.tencent.mm.pluginsdk.h.apj().f(this.cGV, str1, str2))
    {
      m localm2 = m.dZN;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(47);
      arrayOfObject2[1] = Integer.valueOf(64);
      arrayOfObject2[2] = str1;
      localm2.d(10424, arrayOfObject2);
      com.tencent.mm.ui.base.h.an(this.cGV, "");
    }
    m localm1 = m.dZN;
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(47);
    arrayOfObject1[1] = Integer.valueOf(64);
    arrayOfObject1[2] = str1;
    localm1.d(10424, arrayOfObject1);
    com.tencent.mm.ui.base.h.an(this.cGV, this.cGV.getString(2131167704));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.lj
 * JD-Core Version:    0.6.2
 */