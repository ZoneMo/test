package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.MenuItem;
import com.tencent.mm.model.be;
import com.tencent.mm.modelvoice.bc;
import com.tencent.mm.modelvoice.bh;
import com.tencent.mm.modelvoice.bi;
import com.tencent.mm.modelvoice.br;
import com.tencent.mm.modelvoice.s;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.h;

final class ld
  implements cd
{
  ld(ak paramak, Context paramContext)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    String str1 = paramMenuItem.getTitle();
    if (cj.hX(this.ctu.ot()))
    {
      aa.e("MicroMsg.LongClickBrandServiceHelper", "Transfer fileName erro: fileName null");
      return;
    }
    String str2 = this.ctu.ot();
    bh localbh = bc.Er().hB(str2);
    String str3 = this.ctu.ot();
    if (localbh == null);
    for (int i = 0; ; i = localbh.EA())
    {
      String str4 = bi.c(str1, str3, i);
      aa.d("MicroMsg.LongClickBrandServiceHelper", "connector click[voice]: to[%s] filePath[%s]", new Object[] { str1, str4 });
      s locals = new s(str4, 1);
      be.uA().d(locals);
      m localm = m.dZN;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(34);
      arrayOfObject[1] = Integer.valueOf(2);
      arrayOfObject[2] = str1;
      localm.d(10424, arrayOfObject);
      h.an(this.cGV, this.cGV.getString(2131167704));
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ld
 * JD-Core Version:    0.6.2
 */