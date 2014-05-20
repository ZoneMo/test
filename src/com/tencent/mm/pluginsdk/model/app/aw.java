package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

public final class aw
  implements m
{
  private static int cBp = 0;
  Queue cBk = new LinkedList();
  Map cBl = new HashMap();
  private boolean cBm = false;
  Queue ctE = new LinkedList();
  private int ctF = 0;
  private long ctG = 0L;
  private boolean ctH = false;
  k ctI = new k();
  private com.tencent.mm.sdk.platformtools.ay ctJ = new com.tencent.mm.sdk.platformtools.ay(be.ut().getLooper(), new az(this), false);
  private boolean th = false;

  public aw()
  {
    be.uA().a(220, this);
    be.uA().a(221, this);
    be.uA().a(222, this);
  }

  private void AQ()
  {
    this.cBl.clear();
    this.ctE.clear();
    this.cBk.clear();
    this.ctH = false;
    this.cBm = false;
    this.th = false;
    aa.d("MicroMsg.SceneAppMsg", "Finish service use time(ms):" + this.ctI.qh());
  }

  public static void bv(long paramLong)
  {
    be.uA().d(new ak(paramLong));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramx.getType());
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.SceneAppMsg", "onSceneEnd type:%d errType:%d errCode:%d", arrayOfObject);
    be.ut().o(new ax(this, paramx, paramInt1, paramInt2));
  }

  protected final void finalize()
  {
    be.uA().b(220, this);
    be.uA().b(221, this);
    be.uA().b(222, this);
    super.finalize();
  }

  public final void run()
  {
    be.ut().o(new ay(this));
  }

  public final void stop()
  {
    this.ctF = 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.aw
 * JD-Core Version:    0.6.2
 */