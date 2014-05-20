package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;

final class ab extends af
{
  private ap egM;
  private int[] ehE;
  private int[] ehF;
  private ArrayList ehG = null;
  private ArrayList ehH = null;

  public ab(ap paramap, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    this.egM = paramap;
    this.ehE = paramArrayOfInt1;
    this.ehF = paramArrayOfInt2;
  }

  public final boolean execute()
  {
    if (this.ehH == null)
    {
      this.ehG = new ArrayList();
      for (int n = 0; n < this.ehE.length; n++)
        if (this.egM.av(this.ehE[n], this.ehF[n]))
          this.ehG.add(Pair.create(Integer.valueOf(this.ehE[n]), Integer.valueOf(this.ehF[n])));
      if (this.ehG.isEmpty())
        return true;
      this.ehH = new ArrayList(2048);
      int[] arrayOfInt = new int[this.ehG.size()];
      for (int i1 = 0; i1 < this.ehG.size(); i1++)
        arrayOfInt[i1] = ((Integer)((Pair)this.ehG.get(i1)).first).intValue();
      Cursor localCursor = this.egM.a(arrayOfInt, true, false, false, false, false);
      while (localCursor.moveToNext())
        this.ehH.add(Long.valueOf(localCursor.getLong(0)));
      localCursor.close();
    }
    int i = this.ehH.size();
    int j = 50;
    label242: long l;
    if (i > 0)
    {
      if (Thread.interrupted())
      {
        this.egM.commit();
        throw new InterruptedException();
      }
      l = ((Long)this.ehH.get(i - 1)).longValue();
      if (j < 50)
        break label410;
      this.egM.commit();
      this.egM.beginTransaction();
    }
    label410: for (int k = 0; ; k = j)
    {
      this.egM.aE(l);
      j = k + 1;
      int m = i - 1;
      this.ehH.remove(m);
      i = m;
      break label242;
      this.egM.commit();
      Iterator localIterator = this.ehG.iterator();
      while (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        this.egM.aw(((Integer)localPair.first).intValue(), ((Integer)localPair.second).intValue());
      }
      break;
    }
  }

  public final String toString()
  {
    return "CheckIndexUpdateTask(" + this.ehE.toString() + ", " + this.ehF.toString() + ")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.ab
 * JD-Core Version:    0.6.2
 */