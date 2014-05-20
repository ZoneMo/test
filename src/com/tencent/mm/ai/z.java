package com.tencent.mm.ai;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

public final class z
  implements m
{
  private static int cBp = 0;
  Queue cBk = new LinkedList();
  Map cBl = new HashMap();
  private boolean cBm = false;
  private d cBn = null;
  private g cBo = null;
  Queue ctE = new LinkedList();
  private int ctF = 0;
  private long ctG = 0L;
  private boolean ctH = false;
  k ctI = new k();
  private ay ctJ = new ay(be.ut().getLooper(), new ac(this), false);
  private boolean th = false;

  public z()
  {
    be.uA().a(149, this);
    be.uA().a(150, this);
  }

  private void AQ()
  {
    this.cBl.clear();
    this.ctE.clear();
    this.cBk.clear();
    this.ctH = false;
    this.cBm = false;
    this.th = false;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.VideoService", "Finish service use time(ms):" + this.ctI.qh());
  }

  public final void DW()
  {
    if (this.cBn != null)
      this.cBn.stop();
    this.cBl.clear();
    this.ctE.clear();
    this.cBk.clear();
  }

  public final void DX()
  {
    if (this.cBo != null)
      this.cBo.stop();
    this.cBl.clear();
    this.ctE.clear();
    this.cBk.clear();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    be.ut().o(new aa(this, paramx, paramInt1, paramInt2));
  }

  public final void run()
  {
    be.ut().o(new ab(this));
  }

  public final void stop()
  {
    this.ctF = 0;
    if (this.cBn != null)
      this.cBn.stop();
    if (this.cBo != null)
      this.cBo.stop();
    be.uA().b(149, this);
    be.uA().b(150, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.z
 * JD-Core Version:    0.6.2
 */