package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import android.os.Handler;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

final class u extends z
{
  private String eho;
  private boolean ehq;
  private int ehr = 0;

  u(b paramb, String paramString, boolean paramBoolean, ad paramad, Handler paramHandler)
  {
    super(paramString, 3, paramad, paramHandler);
    this.eho = paramString;
    this.ehq = paramBoolean;
  }

  protected final List a(String[] paramArrayOfString, List paramList, int paramInt)
  {
    HashMap localHashMap1 = new HashMap();
    aq[] arrayOfaq1;
    int[] arrayOfInt1;
    int[] arrayOfInt2;
    label197: Cursor localCursor1;
    HashMap localHashMap2;
    HashMap localHashMap3;
    if ((paramInt > 0) && (paramList != null))
    {
      Cursor localCursor2 = b.a(this.egV).a(this.eho, a.egx);
      int i5;
      for (int i4 = 0; localCursor2.moveToNext(); i4 = i5)
      {
        as localas = new as();
        localas.eik = localCursor2.getString(0);
        localas.type = localCursor2.getInt(1);
        localas.eic = localCursor2.getLong(2);
        localas.score = localCursor2.getInt(3);
        Pair localPair = new Pair(Integer.valueOf(localas.type), Long.valueOf(localas.eic));
        i5 = i4 + 1;
        localHashMap1.put(localPair, Integer.valueOf(i4));
      }
      aq[] arrayOfaq2 = new aq[i4];
      localCursor2.close();
      arrayOfaq1 = arrayOfaq2;
      arrayOfInt1 = SearchUtils.u(paramArrayOfString);
      if (!this.ehq)
        break label337;
      arrayOfInt2 = a.egx;
      localCursor1 = b.a(this.egV).a(paramArrayOfString, arrayOfInt2);
      localHashMap2 = new HashMap();
      localHashMap3 = new HashMap();
    }
    while (true)
    {
      if (!localCursor1.moveToNext())
        break label420;
      aq localaq1 = new aq();
      localaq1.a(localCursor1, arrayOfInt1, true);
      if (SearchUtils.a(a.egy, localaq1.type))
      {
        aq localaq3 = (aq)localHashMap2.get(localaq1.eid);
        if ((localaq3 != null) && (ap.a(a.egC, localaq1.ehm, localaq3.ehm) >= 0))
          continue;
        localHashMap2.put(localaq1.eid, localaq1);
        continue;
        arrayOfaq1 = new aq[0];
        break;
        label337: arrayOfInt2 = a.egy;
        break label197;
      }
      if (SearchUtils.a(a.egz, localaq1.type))
      {
        aq localaq2 = (aq)localHashMap3.get(Long.valueOf(localaq1.eic));
        if ((localaq2 == null) || (ap.a(a.egC, localaq1.ehm, localaq2.ehm) < 0))
          localHashMap3.put(Long.valueOf(localaq1.eic), localaq1);
      }
    }
    label420: localCursor1.close();
    if (Thread.interrupted())
      throw new InterruptedException();
    ArrayList localArrayList1 = new ArrayList(localHashMap2.size());
    Iterator localIterator1 = localHashMap2.values().iterator();
    while (localIterator1.hasNext())
    {
      aq localaq5 = (aq)localIterator1.next();
      if ((localaq5.type == 131073) && (localaq5.ehm == 21))
      {
        HashMap localHashMap4 = new HashMap();
        int k = a.egE.length;
        for (int m = 0; m < localaq5.eig.length; m++)
        {
          Iterator localIterator3 = localaq5.eig[m].iterator();
          while (localIterator3.hasNext())
          {
            ar localar = (ar)localIterator3.next();
            int n = localar.eih / k;
            int i1 = localar.eih % k;
            int i2 = a.egE[i1];
            s locals = new s(n, m, i2, localaq5.eie[localar.eih], localar.eii, localar.eij, (byte)0);
            List localList = (List)localHashMap4.get(Integer.valueOf(n));
            if (localList == null)
            {
              ArrayList localArrayList3 = new ArrayList();
              localArrayList3.add(locals);
              localHashMap4.put(Integer.valueOf(n), localArrayList3);
            }
            else
            {
              int i3 = ((s)localList.get(0)).ehm;
              if (i3 == i2)
              {
                localList.add(locals);
              }
              else if (ap.a(a.egC, i2, i3) < 0)
              {
                localList.clear();
                localList.add(locals);
              }
            }
          }
        }
        ArrayList localArrayList2 = new ArrayList();
        Iterator localIterator2 = localHashMap4.values().iterator();
        while (localIterator2.hasNext())
          localArrayList2.addAll((List)localIterator2.next());
        localaq5.CE = localArrayList2;
      }
      Integer localInteger = (Integer)localHashMap1.get(new Pair(Integer.valueOf(localaq5.type), Long.valueOf(localaq5.eic)));
      if ((localInteger != null) && (localInteger.intValue() < arrayOfaq1.length))
        arrayOfaq1[localInteger.intValue()] = localaq5;
      else
        localArrayList1.add(localaq5);
    }
    localArrayList1.addAll(localHashMap3.values());
    if (Thread.interrupted())
      throw new InterruptedException();
    Collections.sort(localArrayList1, new v(this));
    if (paramList != null)
    {
      paramList.clear();
      int i = arrayOfaq1.length;
      for (int j = 0; j < i; j++)
      {
        aq localaq4 = arrayOfaq1[j];
        if (localaq4 != null)
          paramList.add(localaq4);
      }
    }
    this.ehr = localArrayList1.size();
    return localArrayList1;
  }

  public final String toString()
  {
    return "SearchContact(\"" + this.eho + "\") [" + this.ehr + "]";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.u
 * JD-Core Version:    0.6.2
 */