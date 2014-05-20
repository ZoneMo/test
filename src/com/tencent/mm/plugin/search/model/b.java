package com.tencent.mm.plugin.search.model;

import android.os.Handler;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import java.io.Closeable;
import java.util.HashMap;

public final class b
  implements Closeable
{
  private y egK;
  private com.tencent.mm.ap.i egL;
  private ap egM;
  private boolean egN;
  private HashMap egO;
  private ar egP = new c(this);
  private ar egQ = new d(this);
  private al egR = new e(this);
  private com.tencent.mm.sdk.b.g egS = new f(this);
  private ay egT = new ay(be.ut().getLooper(), new g(this), true);
  private ay egU = new ay(be.ut().getLooper(), new h(this), false);

  public b(y paramy, ap paramap)
  {
    this.egK = paramy;
    this.egL = be.uz().sq();
    this.egM = paramap;
    this.egO = new HashMap();
    this.egN = false;
    int[] arrayOfInt1 = { 131072, 131073, 131074, 131075, 131076 };
    int[] arrayOfInt2 = { 1, 4, 0, 1, 1 };
    ab localab = new ab(this.egM, arrayOfInt1, arrayOfInt2);
    this.egK.a(65544, localab);
    this.egK.a(131072, new j(this, (byte)0));
    this.egK.a(131082, new k(this, (byte)0));
    if (this.egN)
      this.egK.a(131092, new l(this, (byte)0));
    be.uz().sA().e(this.egR);
    be.uz().su().a(this.egP);
    ax.Al().a(this.egQ);
    this.egT.bO(600000L);
    a.ayH().a("UpdateSearchIndexAtOnce", this.egS);
  }

  public final af a(String paramString, aq paramaq)
  {
    t localt = new t(this, paramString, paramaq);
    return this.egK.a(65546, localt);
  }

  public final af a(String paramString, boolean paramBoolean, ad paramad, Handler paramHandler)
  {
    u localu = new u(this, paramString, paramBoolean, paramad, paramHandler);
    return this.egK.a(-65536, localu);
  }

  public final void close()
  {
    a.ayH().b("UpdateSearchIndexAtOnce", this.egS);
    this.egU.azn();
    this.egT.azn();
    ax.Al().b(this.egQ);
    be.uz().su().b(this.egP);
  }

  protected final void finalize()
  {
    close();
    super.finalize();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.b
 * JD-Core Version:    0.6.2
 */