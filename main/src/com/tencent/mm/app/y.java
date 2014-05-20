package com.tencent.mm.app;

import com.tencent.mm.c.a.fx;
import com.tencent.mm.c.a.fy;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.z.f;

final class y extends g
{
  y(WorkerProfile paramWorkerProfile)
  {
  }

  public final boolean a(e parame)
  {
    fx localfx = (fx)parame;
    String str1 = localfx.bQv.bQw;
    String str2 = localfx.bQv.content;
    int i = localfx.bQv.type;
    f localf = new f(str1, str2, i);
    be.uA().d(localf);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.y
 * JD-Core Version:    0.6.2
 */