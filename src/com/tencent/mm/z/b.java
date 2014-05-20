package com.tencent.mm.z;

import com.tencent.mm.c.a.gc;
import com.tencent.mm.model.be;
import com.tencent.mm.protocal.a.oz;
import com.tencent.mm.protocal.ap;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;
import java.util.Queue;

final class b
{
  private final ay ckr = new ay(be.ut().getLooper(), new c(this), true);
  private boolean cuA = false;
  private final n cuB;
  private a cuC = null;
  private long cuD = 0L;
  private final i cuw;
  private final Queue cux = new LinkedList();
  protected ap cuy;
  private int cuz;

  public b(i parami)
  {
    Bn();
    this.cuB = new n();
    this.cuw = parami;
  }

  private void Bn()
  {
    this.cuz = 0;
    this.cuy = null;
  }

  public final void a(a parama)
  {
    this.cuC = parama;
  }

  public final boolean a(ap paramap)
  {
    if (((paramap.fyr.fIz & i.cuT) != 0) && (!this.cuw.wL()));
    for (boolean bool = true; ; bool = false)
    {
      if ((!bool) && ((0x100 & paramap.fyr.fIz) != 0))
      {
        gc localgc = new gc();
        com.tencent.mm.sdk.b.a.ayH().f(localgc);
      }
      return bool;
    }
  }

  public final boolean b(ap paramap)
  {
    boolean bool = a(paramap);
    if (this.cuy != null)
    {
      aa.d("MicroMsg.InitRespHandler", "busy, processing resp, continue=" + this.cuy.fyr.fIz + ", initKey=" + cj.cn(com.tencent.mm.platformtools.an.a(this.cuy.fyr.fRd)));
      this.cux.add(paramap);
      return bool;
    }
    aa.i("MicroMsg.InitRespHandler", "idle process next resp, continue=" + paramap.fyr.fIz + ", initKey=" + cj.cn(com.tencent.mm.platformtools.an.a(paramap.fyr.fRd)));
    this.cuy = paramap;
    i.Bv();
    this.ckr.bO(50L);
    return bool;
  }

  public final void cancel()
  {
    this.cuA = true;
    this.cux.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.b
 * JD-Core Version:    0.6.2
 */