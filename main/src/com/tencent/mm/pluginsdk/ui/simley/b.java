package com.tencent.mm.pluginsdk.ui.simley;

import com.tencent.mm.an.a;
import java.util.ArrayList;
import java.util.List;

public final class b
{
  public int VERSION = 0;
  public List fsC = new ArrayList();
  public ArrayList fsD;
  public long fsE;
  public int[] fsF;
  public int fsG;
  public int fsH = a.fromDPToPix(com.tencent.mm.sdk.platformtools.al.getContext(), 179);
  public int fsI;
  public boolean fsJ;
  public boolean fsK;
  private final com.tencent.mm.sdk.e.al fsL = new c(this);
  private final com.tencent.mm.sdk.e.al fsM = new d(this);

  public final void clear()
  {
    this.fsC = new ArrayList();
    this.fsF = null;
    this.fsG = 0;
    if (this.fsD != null)
      this.fsD.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.b
 * JD-Core Version:    0.6.2
 */