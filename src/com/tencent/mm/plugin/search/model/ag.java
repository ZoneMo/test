package com.tencent.mm.plugin.search.model;

import android.os.Handler;
import com.tencent.mm.ap.i;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.ar;
import com.tencent.mm.storage.at;
import java.io.Closeable;

public final class ag
  implements ar, Closeable
{
  private y egK;
  private i egL;
  private ap egM;
  private boolean ehS = false;
  g ehT = new ah(this);
  ay ehU = new ay(be.ut().getLooper(), new ai(this), false);

  public ag(y paramy, ap paramap)
  {
    this.egK = paramy;
    this.egL = be.uz().sq();
    this.egM = paramap;
    int[] arrayOfInt1 = { 65536 };
    int[] arrayOfInt2 = { 0 };
    ab localab = new ab(this.egM, arrayOfInt1, arrayOfInt2);
    this.egK.a(65565, localab);
    a.ayH().a("Activate", this.ehT);
    be.uz().sw().a(this, null);
  }

  public final af a(String paramString, ad paramad, Handler paramHandler)
  {
    an localan = new an(this, paramString, paramad, paramHandler);
    return this.egK.a(-65536, localan);
  }

  public final void a(com.tencent.mm.storage.ap paramap, at paramat)
  {
    if (paramat.giq.equals("insert"))
      this.egK.a(65566, new am(this, paramat.dOI));
    while ((!paramat.giq.equals("delete")) || (paramat.gis == 0L))
      return;
    if (paramat.gis == -1L)
    {
      this.egK.a(65566, new al(this, paramat.bNl));
      return;
    }
    this.egK.a(65566, new ak(this, paramat.gis));
  }

  public final void close()
  {
    be.uz().sw().a(this);
    a.ayH().b("Activate", this.ehT);
  }

  protected final void finalize()
  {
    close();
    super.finalize();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.ag
 * JD-Core Version:    0.6.2
 */