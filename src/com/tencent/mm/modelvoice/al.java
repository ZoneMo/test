package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

public final class al
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
  private ay ctJ = new ay(be.ut().getLooper(), new ao(this), false);
  private boolean th = false;

  public al()
  {
    be.uA().a(127, this);
    be.uA().a(128, this);
  }

  private void AQ()
  {
    this.cBl.clear();
    this.ctE.clear();
    this.cBk.clear();
    this.ctH = false;
    this.cBm = false;
    this.th = false;
    aa.d("MicroMsg.SceneVoice", "Finish service use time(ms):" + this.ctI.qh());
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    be.ut().o(new am(this, paramx, paramInt1, paramInt2));
  }

  public final void run()
  {
    be.ut().o(new an(this));
  }

  public final void stop()
  {
    this.ctF = 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.al
 * JD-Core Version:    0.6.2
 */