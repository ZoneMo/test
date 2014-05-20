package com.tencent.mm.z;

import com.tencent.mm.c.a.gc;
import com.tencent.mm.model.be;
import com.tencent.mm.protocal.a.pe;
import com.tencent.mm.protocal.as;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;

final class r
{
  private final ay ckr = new ay(be.ut().getLooper(), new s(this), true);
  private boolean cuA = false;
  private final n cuB;
  private final i cuw;
  protected as cvs;
  private int cvt;
  private boolean cvu;

  public r(i parami)
  {
    Bn();
    this.cuB = new n();
    this.cuw = parami;
  }

  private void Bn()
  {
    this.cvu = true;
    this.cvt = 0;
    this.cvs = null;
    this.cuA = false;
  }

  public final boolean b(as paramas)
  {
    if (((paramas.fyt.fIz & i.cuT) != 0) && (!this.cuw.wL()));
    for (boolean bool = true; ; bool = false)
    {
      aa.i("MicroMsg.SyncRespHandler", "continue flag=" + paramas.fyt.fIz + ", selector=" + i.cuT + ", limit reach=" + this.cuw.wL());
      if ((!bool) && ((0x100 & paramas.fyt.fIz) != 0))
      {
        gc localgc = new gc();
        a.ayH().f(localgc);
      }
      return bool;
    }
  }

  public final void c(as paramas)
  {
    this.cvs = paramas;
    i.Bt();
    this.ckr.bO(50L);
  }

  public final void cancel()
  {
    this.cuA = true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.r
 * JD-Core Version:    0.6.2
 */