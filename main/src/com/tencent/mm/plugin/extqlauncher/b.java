package com.tencent.mm.plugin.extqlauncher;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.model.x;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.o;
import java.util.HashMap;

public final class b
  implements bb
{
  private f dgo;
  private g dgp;
  private boolean dgq = false;
  private ar dgr = new c(this);
  private boolean dgs = false;
  private long dgt = 0L;
  private final long dgu = 300000L;
  private final long dgv = 4000L;
  private final String dgw = "fun1";
  private int dgx = 0;
  private Handler dgy = new e(this, Looper.getMainLooper());

  public static b Mw()
  {
    b localb = (b)be.uh().dN("plugin.extqlauncher");
    if (localb == null)
    {
      localb = new b();
      be.uh().a("plugin.extqlauncher", localb);
    }
    return localb;
  }

  public static int Mx()
  {
    int i;
    if (!be.se())
    {
      aa.w("MicroMsg.SubCoreExtQLauncher", "getMMUnread account not ready");
      i = 0;
    }
    int j;
    do
    {
      return i;
      i = x.a(w.chM, null);
      j = x.tU();
    }
    while ((0x8000 & v.tl()) != 0);
    return i - j;
  }

  public final void My()
  {
    this.dgy.removeMessages(0);
    this.dgy.sendEmptyMessageDelayed(0, 4000L);
  }

  public final void N(boolean paramBoolean)
  {
    be.uz().sx().a(this.dgr);
    if (this.dgo == null)
      this.dgo = new f();
    a.ayH().a("ExtCall", this.dgo);
    if (this.dgp == null)
      this.dgp = new g(this);
    a.ayH().a("PublishScanCodeResult", this.dgp);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    if (this.dgo != null)
      a.ayH().b("ExtCall", this.dgo);
    if (this.dgp != null)
      a.ayH().b("PublishScanCodeResult", this.dgp);
    be.uz().sx().b(this.dgr);
    this.dgy.removeMessages(0);
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.extqlauncher.b
 * JD-Core Version:    0.6.2
 */