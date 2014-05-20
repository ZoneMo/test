package com.tencent.mm.plugin.accountsync.ui;

import android.content.Context;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.modelsimple.g;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;

final class a
  implements com.tencent.mm.plugin.accountsync.model.c
{
  private boolean cIj;
  private g cIk = new b(this);

  public a(ContactsSyncUI paramContactsSyncUI, boolean paramBoolean)
  {
    this.cIj = paramBoolean;
  }

  private int z(Context paramContext, String paramString)
  {
    if (paramContext == null)
      return 1;
    int i = f.a(paramContext, paramString, this.cIk);
    if (i == 2)
    {
      Toast.makeText(paramContext, this.cIl.getString(n.biJ), 1).show();
      return 1;
    }
    if (i == 3)
    {
      Toast.makeText(paramContext, this.cIl.getString(n.biI), 1).show();
      return 1;
    }
    return 0;
  }

  public final int aj(Context paramContext)
  {
    if ((!be.uD()) || (be.uG()))
      return 4;
    if (!this.cIj)
    {
      aa.i("MicroMsg.ProcessorAddAccount", "no need to bind mobile");
      f.a(this.cIl, this.cIk);
      return 0;
    }
    String str = (String)be.uz().sr().get(6, "");
    if (cj.hX(str))
    {
      aa.e("MicroMsg.ProcessorAddAccount", "not bind mobile phone");
      return 2;
    }
    if (z.zo())
    {
      h.a(paramContext, n.biH, n.ber, n.bee, n.bds, new c(this, paramContext, str), new d(this, paramContext));
      return 5;
    }
    return z(paramContext, str);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.a
 * JD-Core Version:    0.6.2
 */