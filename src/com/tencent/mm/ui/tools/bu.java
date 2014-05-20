package com.tencent.mm.ui.tools;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.n;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.w.u;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

final class bu
  implements m
{
  private List hjv = new LinkedList();
  private HashSet hjw = new HashSet();
  private m hjx;
  private n hjy;
  private u hjz = null;

  public bu(m paramm, n paramn)
  {
    this.hjx = paramm;
    this.hjy = paramn;
    be.uA().a(109, this);
  }

  private void ayE()
  {
    if (this.hjv.size() <= 0)
    {
      aa.i("MicroMsg.GetImgService", "startDoScene, list is empty");
      return;
    }
    bv localbv = (bv)this.hjv.get(0);
    this.hjz = new u(localbv.cpL, localbv.cpM, localbv.ctP, this.hjy);
    this.hjz.dL(localbv.pos);
    be.uA().d(this.hjz);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.hjv.size() <= 0)
      return;
    this.hjx.a(paramInt1, paramInt2, paramString, paramx);
    this.hjv.remove(0);
    ayE();
  }

  public final boolean a(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    bv localbv = new bv(paramLong1, paramLong2, paramInt1, paramInt2);
    if (this.hjw.contains(localbv))
    {
      aa.e("MicroMsg.GetImgService", "push fail, info already in history list, new added info = " + localbv);
      return false;
    }
    this.hjw.add(localbv);
    if (this.hjv.contains(localbv))
    {
      aa.i("MicroMsg.GetImgService", "push, already in todo list, new added info = " + localbv);
      return false;
    }
    this.hjv.add(localbv);
    if (this.hjv.size() == 1)
      ayE();
    return true;
  }

  public final void detach()
  {
    if (this.hjz != null)
      be.uA().c(this.hjz);
    this.hjv.clear();
    be.uA().b(109, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bu
 * JD-Core Version:    0.6.2
 */