package com.tencent.mm.plugin.backup.model;

import android.database.Cursor;
import android.widget.TextView;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class aa
{
  private List cKN = new ArrayList();
  private Map cKO = new HashMap();
  private Map cKP = new HashMap();
  private LinkedList cKQ = new LinkedList();
  private Set cKR = new HashSet();
  private Set cKS = new HashSet();
  private LinkedList cKT = new LinkedList();
  private long cKU = 0L;
  private boolean cbK;

  private void Hp()
  {
    if (this.cbK);
    while (this.cKQ.size() <= 0)
      return;
    new ab(this).c(new String[] { "" });
  }

  private int iA(String paramString)
  {
    String str = (String)d.Gj().sr().get(2);
    PInt localPInt = new PInt();
    Cursor localCursor = d.Gj().sw().vd(paramString);
    while (true)
    {
      ak localak;
      if ((localCursor.moveToFirst()) && (!localCursor.isAfterLast()))
      {
        if (this.cbK)
        {
          localCursor.close();
          return -1;
        }
        localak = new ak();
        localak.convertFrom(localCursor);
      }
      try
      {
        k.a(localak, true, str, localPInt, null, false);
        label97: localCursor.moveToNext();
        continue;
        localCursor.close();
        return localPInt.value;
      }
      catch (Exception localException)
      {
        break label97;
      }
    }
  }

  public final boolean Gy()
  {
    return (this.cbK) && (this.cKR.isEmpty());
  }

  public final long a(HashSet paramHashSet)
  {
    Iterator localIterator = paramHashSet.iterator();
    long l1 = 0L;
    String str;
    if (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      if (!this.cKP.containsKey(str))
        break label71;
    }
    label71: for (long l2 = l1 + ((Integer)this.cKP.get(str)).intValue(); ; l2 = l1)
    {
      l1 = l2;
      break;
      return l1;
    }
  }

  public final void a(ac paramac)
  {
    this.cKT.add(paramac);
  }

  public final boolean a(String paramString, TextView paramTextView)
  {
    if (paramTextView != null)
    {
      int i = paramTextView.hashCode();
      Iterator localIterator = this.cKN.iterator();
      while (localIterator.hasNext())
      {
        ad localad = (ad)localIterator.next();
        if (i == localad.Hr())
          this.cKN.remove(localad);
      }
      this.cKN.add(new ad(paramString, i));
      WeakReference localWeakReference = new WeakReference(paramTextView);
      this.cKO.put(Integer.valueOf(i), localWeakReference);
    }
    if (this.cKP.containsKey(paramString))
    {
      paramTextView.setText(cj.K(((Integer)this.cKP.get(paramString)).intValue()));
      return true;
    }
    if (this.cKR.contains(paramString))
      return false;
    if (!this.cKQ.contains(paramString))
      this.cKQ.add(paramString);
    Hp();
    return false;
  }

  public final void b(ac paramac)
  {
    this.cKT.remove(paramac);
  }

  public final boolean b(HashSet paramHashSet)
  {
    Iterator localIterator = paramHashSet.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!this.cKP.containsKey(str))
        return false;
    }
    return true;
  }

  public final void cancel()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.LazerCaluateLoader", "cancel");
    this.cKQ.clear();
    this.cbK = true;
  }

  public final void fd(int paramInt)
  {
    this.cKS.remove(Integer.valueOf(paramInt));
    if (this.cKS.isEmpty())
    {
      this.cKQ.clear();
      this.cKN.clear();
      this.cKU = 0L;
    }
  }

  public final void init(int paramInt)
  {
    if (this.cKS.isEmpty())
    {
      this.cKQ.clear();
      this.cKP.clear();
      this.cKN.clear();
      this.cKU = 0L;
      this.cbK = false;
    }
    this.cKS.add(Integer.valueOf(paramInt));
  }

  public final boolean iz(String paramString)
  {
    boolean bool = true;
    if (this.cKP.containsKey(paramString))
      bool = false;
    while (this.cKR.contains(paramString))
      return bool;
    if (!this.cKQ.contains(paramString))
      this.cKQ.add(paramString);
    Hp();
    return bool;
  }

  public final void m(LinkedList paramLinkedList)
  {
    Iterator localIterator = paramLinkedList.iterator();
    label74: 
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((this.cKR.contains(str)) || (this.cKP.containsKey(str)));
      for (int i = 1; ; i = 0)
      {
        if (i != 0)
          break label74;
        this.cKQ.add(str);
        break;
      }
    }
    Hp();
  }

  public final int u(List paramList)
  {
    Iterator localIterator = paramList.iterator();
    int i = 0;
    String str;
    if (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      if (!this.cKP.containsKey(str))
        break label72;
    }
    label72: for (int j = i + ((Integer)this.cKP.get(str)).intValue(); ; j = i)
    {
      i = j;
      break;
      return i;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.aa
 * JD-Core Version:    0.6.2
 */