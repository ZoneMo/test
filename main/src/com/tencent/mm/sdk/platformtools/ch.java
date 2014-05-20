package com.tencent.mm.sdk.platformtools;

import android.os.SystemClock;
import java.util.ArrayList;

public final class ch
{
  private String ax;
  private String gfi;
  private boolean gfj;
  ArrayList gfk;
  ArrayList gfl;

  public ch(String paramString1, String paramString2)
  {
    this.ax = paramString1;
    this.gfi = paramString2;
    this.gfj = false;
    if (!this.gfj)
    {
      if (this.gfk != null)
        break label61;
      this.gfk = new ArrayList();
      this.gfl = new ArrayList();
    }
    while (true)
    {
      addSplit(null);
      return;
      label61: this.gfk.clear();
      this.gfl.clear();
    }
  }

  public final void addSplit(String paramString)
  {
    if (this.gfj)
      return;
    long l = SystemClock.elapsedRealtime();
    this.gfk.add(Long.valueOf(l));
    this.gfl.add(paramString);
  }

  public final void dumpToLog()
  {
    if (this.gfj)
      return;
    aa.d(this.ax, this.gfi + ": begin");
    long l1 = ((Long)this.gfk.get(0)).longValue();
    int i = 1;
    long l3;
    for (long l2 = l1; i < this.gfk.size(); l2 = l3)
    {
      l3 = ((Long)this.gfk.get(i)).longValue();
      String str = (String)this.gfl.get(i);
      long l4 = ((Long)this.gfk.get(i - 1)).longValue();
      aa.d(this.ax, this.gfi + ":      " + (l3 - l4) + " ms, " + str);
      i++;
    }
    aa.d(this.ax, this.gfi + ": end, " + (l2 - l1) + " ms");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.ch
 * JD-Core Version:    0.6.2
 */