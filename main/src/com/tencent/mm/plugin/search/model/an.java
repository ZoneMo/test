package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import android.os.Handler;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

final class an extends z
{
  private String eho;
  private int ehr = 0;

  an(ag paramag, String paramString, ad paramad, Handler paramHandler)
  {
    super(paramString, 0, paramad, paramHandler);
    this.eho = paramString;
  }

  protected final List a(String[] paramArrayOfString, List paramList, int paramInt)
  {
    int[] arrayOfInt = SearchUtils.u(paramArrayOfString);
    Cursor localCursor = ag.a(this.ehV).a(paramArrayOfString, a.egw);
    HashMap localHashMap = new HashMap(2 * localCursor.getCount());
    while (localCursor.moveToNext())
    {
      aq localaq = new aq();
      localaq.a(localCursor, arrayOfInt, false);
      localHashMap.put(new Pair(Long.valueOf(localaq.eic), Long.valueOf(localaq.timestamp)), localaq);
    }
    localCursor.close();
    if (Thread.interrupted())
      throw new InterruptedException();
    ArrayList localArrayList = new ArrayList(localHashMap.values());
    Collections.sort(localArrayList, new ao(this));
    this.ehr = localArrayList.size();
    return localArrayList;
  }

  public final String toString()
  {
    return "SearchMessage(\"" + this.eho + "\") [" + this.ehr + "]";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.an
 * JD-Core Version:    0.6.2
 */