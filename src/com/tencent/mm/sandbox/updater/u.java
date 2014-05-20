package com.tencent.mm.sandbox.updater;

import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.protocal.a.av;
import com.tencent.mm.protocal.a.kz;
import com.tencent.mm.protocal.a.rt;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sandbox.monitor.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.h;
import java.io.File;

final class u extends com.tencent.mm.sandbox.b
{
  u(t paramt)
  {
  }

  public final void a(int paramInt1, int paramInt2, rt paramrt)
  {
    if ((paramInt1 != 200) || (paramInt2 != 0) || ((paramrt != null) && (paramrt.ayf().fAY != 0)))
    {
      if (t.a(this.gbq) < 5 * t.b(this.gbq).length)
      {
        this.gbq.a(t.c(this.gbq));
        return;
      }
      t.c(this.gbq).a(paramInt1, paramInt2, paramrt);
      return;
    }
    kz localkz = (kz)paramrt;
    aa.d("MicroMsg.NetSceneGetUpdatePack", "onGYNetEnd : file dir = " + h.cfD);
    aa.d("MicroMsg.NetSceneGetUpdatePack", "onGYNetEnd : total len = " + localkz.fAL);
    aa.d("MicroMsg.NetSceneGetUpdatePack", "onGYNetEnd : start pos = " + localkz.fEd);
    aa.d("MicroMsg.NetSceneGetUpdatePack", "onGYNetEnd : data len = " + localkz.fAU);
    if ((localkz.fAU <= 0) || (localkz.fAJ == null))
    {
      aa.e("MicroMsg.NetSceneGetUpdatePack", "data is null");
      t.c(this.gbq).a(paramInt1, -1, null);
      return;
    }
    if (localkz.fAJ.ayg() != localkz.fAU)
    {
      aa.e("MicroMsg.NetSceneGetUpdatePack", "data len not match with data buf, dataLen = " + localkz.fAU + " data buf len = " + localkz.fAJ.ayg());
      t.c(this.gbq).a(4, -1, null);
      return;
    }
    if ((localkz.fEd < 0) || (localkz.fEd + localkz.fAU > localkz.fAL))
    {
      aa.e("MicroMsg.NetSceneGetUpdatePack", "startPos = " + localkz.fEd + " dataLen = " + localkz.fAU + " totalLen = " + localkz.fAL);
      t.c(this.gbq).a(4, -1, null);
      return;
    }
    if (localkz.fAL <= 0)
    {
      aa.e("MicroMsg.NetSceneGetUpdatePack", "totalLen is invalid: totalLen = " + localkz.fAL);
      t.c(this.gbq).a(4, -1, null);
      return;
    }
    int i = c.a(j.gaN, t.d(this.gbq), ".temp", localkz.fAJ.ayh().toByteArray());
    if (i != 0)
    {
      aa.e("MicroMsg.NetSceneGetUpdatePack", "appendBuf failed : " + i);
      t.c(this.gbq).a(4, -1, null);
      return;
    }
    t.a(this.gbq, localkz.fAU + localkz.fEd);
    t.b(this.gbq, localkz.fAL);
    t.c(this.gbq).B(localkz.fAL, localkz.fEd);
    if (localkz.fEd + localkz.fAU >= localkz.fAL);
    try
    {
      if (t.f(this.gbq).equalsIgnoreCase(f.au(t.e(this.gbq))))
      {
        c.a(j.gaN, t.g(this.gbq) + ".temp", t.h(this.gbq) + ".apk");
        t.c(this.gbq).a(200, 0, paramrt);
        return;
      }
      aa.e("MicroMsg.NetSceneGetUpdatePack", "update pack check error");
      new File(t.i(this.gbq)).delete();
      t.c(this.gbq).a(-1, -1, paramrt);
      return;
      this.gbq.a(t.c(this.gbq));
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.u
 * JD-Core Version:    0.6.2
 */