package com.tencent.mm.plugin.accountsync.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

public final class b
  implements m, com.tencent.mm.n.n
{
  private ch cHU;
  private e cHV;
  private x cmI;
  private Context context;
  private Handler handler = new Handler(Looper.getMainLooper());

  private b(Context paramContext, e parame)
  {
    this.context = paramContext;
    this.cHV = parame;
  }

  public static b a(Context paramContext, e parame)
  {
    b localb = new b(paramContext, parame);
    be.uA().a(38, localb);
    localb.cmI = a.cHT.a(localb);
    be.uA().d(localb.cmI);
    Context localContext = localb.context;
    localb.context.getString(com.tencent.mm.n.ber);
    localb.cHU = h.a(localContext, localb.context.getString(com.tencent.mm.n.beb), true, new c(localb));
    return localb;
  }

  public final void a(int paramInt1, int paramInt2, x paramx)
  {
    if (paramInt2 != 0);
    for (int i = paramInt1 * 100 / paramInt2; ; i = 0)
    {
      this.handler.post(new d(this, i));
      return;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((paramInt2 == 0) && (paramInt1 == 0))
      this.cHV.FP();
    while (true)
    {
      if (this.cHU != null)
        this.cHU.dismiss();
      return;
      aa.e("MicroMsg.DoInit", "do init failed, err=" + paramInt1 + "," + paramInt2);
      this.cHV.FP();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.a.b
 * JD-Core Version:    0.6.2
 */