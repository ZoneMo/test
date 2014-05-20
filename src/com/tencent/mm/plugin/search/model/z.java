package com.tencent.mm.plugin.search.model;

import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

abstract class z extends af
{
  private List ehA;
  private int ehB;
  private ad ehy;
  private String[] ehz;
  private Handler mHandler;

  z(String paramString, int paramInt, ad paramad, Handler paramHandler)
  {
    this.ehy = paramad;
    this.mHandler = paramHandler;
    this.ehz = a.egJ.split(paramString.replace('*', ' '));
    if (paramInt > 0);
    for (ArrayList localArrayList = new ArrayList(paramInt); ; localArrayList = null)
    {
      this.ehA = localArrayList;
      this.ehB = paramInt;
      return;
    }
  }

  protected abstract List a(String[] paramArrayOfString, List paramList, int paramInt);

  public final boolean execute()
  {
    List localList = a(this.ehz, this.ehA, this.ehB);
    if (Thread.interrupted())
      throw new InterruptedException();
    if (this.mHandler == null)
      this.ehy.a(localList, this.ehA, this.ehz);
    while (true)
    {
      return true;
      this.mHandler.post(new aa(this, localList));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.z
 * JD-Core Version:    0.6.2
 */