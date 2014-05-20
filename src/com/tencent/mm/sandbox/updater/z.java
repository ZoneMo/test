package com.tencent.mm.sandbox.updater;

import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.protocal.a.rt;
import com.tencent.mm.sandbox.b;
import com.tencent.mm.sandbox.monitor.j;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;

final class z extends b
{
  z(w paramw)
  {
  }

  public final void B(int paramInt1, int paramInt2)
  {
    aa.d("MicroMsg.NetSceneGetUpdatePackFromCDN", "progress, total=" + paramInt1 + ", offset=" + paramInt2);
    w.b(this.gbz).B(paramInt1, paramInt2);
  }

  public final void a(int paramInt1, int paramInt2, rt paramrt)
  {
    if (paramInt1 != 0)
    {
      aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "scene error. netRet=" + paramInt1);
      if (paramInt1 == -2)
        new File(this.gbz.ayA()).delete();
      w.e(this.gbz);
      this.gbz.a(w.b(this.gbz));
      return;
    }
    aa.i("MicroMsg.NetSceneGetUpdatePackFromCDN", "scene success");
    try
    {
      if (c.ar(this.gbz.ayA()) < w.f(this.gbz))
      {
        aa.i("MicroMsg.NetSceneGetUpdatePackFromCDN", "scene continue;");
        this.gbz.a(w.b(this.gbz));
        return;
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "error occured during pack processing");
      w.b(this.gbz).a(-1, -1, paramrt);
      return;
    }
    if (w.g(this.gbz))
    {
      if (!w.h(this.gbz).equalsIgnoreCase(f.au(this.gbz.ayA())))
      {
        aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "pack md5 check error");
        new File(this.gbz.ayA()).delete();
        w.b(this.gbz).a(2, -1, paramrt);
        return;
      }
      w.a(this.gbz, paramrt);
      return;
    }
    if (!w.i(this.gbz).equalsIgnoreCase(f.au(this.gbz.ayA())))
    {
      aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "update pack check error");
      new File(this.gbz.ayA()).delete();
      w.b(this.gbz).a(-1, -1, paramrt);
      return;
    }
    c.a(j.gaN, w.j(this.gbz) + ".temp", w.k(this.gbz) + ".apk");
    w.b(this.gbz).a(200, 0, paramrt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.z
 * JD-Core Version:    0.6.2
 */