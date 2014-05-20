package com.tencent.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import java.util.ArrayList;
import java.util.List;

class ad extends ba
{
  protected an Wd = null;
  protected bc We = null;
  protected List Wf = null;
  protected List Wg = null;
  protected List Wh = null;
  protected List Wi = null;
  byte[] Wj = new byte[0];

  protected static boolean a(List paramList, aa paramaa)
  {
    if ((paramList == null) || (paramaa == null));
    int i;
    do
    {
      return false;
      i = paramList.size();
    }
    while (i <= 0);
    int j = 0;
    if (j < i)
    {
      aa localaa = (aa)paramList.get(j);
      if ((localaa == null) || (!localaa.equals(paramaa)));
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      j++;
      break;
    }
  }

  protected static void b(List paramList)
  {
    if (paramList == null);
    while (true)
    {
      return;
      int i = paramList.size();
      for (int j = 0; j < i; j++)
      {
        ac localac = (ac)paramList.remove(0);
        if (localac != null)
          localac.Wb = null;
      }
    }
  }

  private boolean b(aa paramaa)
  {
    synchronized (this.Wj)
    {
      if (this.Wg == null)
        return false;
      if (!this.Wg.contains(paramaa))
        return false;
    }
    boolean bool = this.Wg.remove(paramaa);
    return bool;
  }

  private ArrayList mC()
  {
    int i;
    synchronized (this.Wj)
    {
      if (this.Wh == null)
        return null;
      i = this.Wh.size();
      if (i <= 0)
        return null;
    }
    ArrayList localArrayList = new ArrayList();
    int j = this.r;
    int k = 0;
    if (i > j)
      i = j;
    while (true)
    {
      if (k < i)
      {
        aa localaa = (aa)this.Wh.remove(0);
        if (localaa != null)
        {
          localaa.UN = this.WM;
          localArrayList.add(localaa);
          if ((this.Wg != null) && (this.Wg.contains(localaa) != true))
            this.Wg.add(localaa);
        }
      }
      else
      {
        if (this.Wh.size() > 0)
          mD();
        return localArrayList;
      }
      k++;
    }
  }

  private void mD()
  {
    if ((this.Vm != null) && (this.Vm.WY != null) && (this.Vm.WY.WU != null))
      this.Vm.WY.WU.bb(1);
  }

  protected void a(Canvas paramCanvas)
  {
    int i = this.Wf.size();
    if (i <= 0)
      return;
    int j = 0;
    while (j < i)
    {
      ac localac = (ac)this.Wf.get(j);
      Bitmap localBitmap;
      if (localac != null)
      {
        localBitmap = localac.Wb;
        if (localBitmap != null);
      }
      try
      {
        a(localac);
        localBitmap = localac.Wb;
        if (localBitmap != null)
          paramCanvas.drawBitmap(localBitmap, localac.VZ, localac.Wa, null);
        label89: j++;
      }
      catch (Exception localException)
      {
        break label89;
      }
      catch (Error localError)
      {
        break label89;
      }
    }
  }

  final void a(aa paramaa)
  {
    if (paramaa == null);
    while (this.Wi == null)
      return;
    this.Wi.add(paramaa);
    if ((this.Vm != null) && (this.Vm.WX != null))
      this.Vm.WX.mB();
    Thread.yield();
  }

  protected final void a(aa paramaa, ArrayList paramArrayList)
  {
    while (true)
    {
      int j;
      synchronized (this.Wj)
      {
        if (this.Wh == null)
          return;
        if (paramArrayList != null)
        {
          int i = paramArrayList.size();
          j = 0;
          if (j < i)
          {
            aa localaa = (aa)paramArrayList.get(j);
            if ((localaa == null) || (a(this.Wg, localaa)))
              break label120;
            this.Wh.add(localaa);
            break label120;
          }
        }
        if ((paramaa != null) && (!a(this.Wg, paramaa)))
          this.Wh.add(paramaa);
        mD();
        return;
      }
      label120: j++;
    }
  }

  protected final void a(ac paramac)
  {
    if (paramac == null);
    int i;
    int j;
    label28: aa localaa;
    do
    {
      do
      {
        do
          return;
        while (this.Wi == null);
        i = this.Wi.size();
      }
      while (i <= 0);
      j = 0;
      if (j >= i)
        break;
      localaa = (aa)this.Wi.get(j);
    }
    while (localaa == null);
    int k;
    if (localaa.equals(paramac))
    {
      paramac.Wb = this.Wd.ao(paramac.toString()).Wu;
      if (this.Wi.remove(localaa) == true)
        k = j - 1;
    }
    for (int m = i - 1; ; m = i)
    {
      int n = k + 1;
      i = m;
      j = n;
      break label28;
      break;
      k = j;
    }
  }

  protected void a(ArrayList paramArrayList, boolean paramBoolean)
  {
    if (paramArrayList == null);
    label442: label449: 
    while (true)
    {
      return;
      b(this.Wf);
      this.Wi.clear();
      int i = this.Vm.WW.mV();
      if ((i <= this.VL) && (i >= this.VM))
      {
        if (paramArrayList.size() == 0)
          paramArrayList = this.Vm.WZ.a(i, this.Vm.WW.mU(), this.Vm.WW.mE(), this.Vm.WW.mR());
        int j = this.Vm.WW.mV();
        Object localObject;
        if (paramArrayList == null)
        {
          localObject = null;
          if ((localObject != null) && (localObject.size() > 0))
          {
            if (this.WI != true)
              break label442;
            c(null);
          }
        }
        while (true)
        {
          if (localObject == null)
            break label449;
          localObject.clear();
          return;
          if (!this.Vw)
          {
            localObject = null;
            break;
          }
          if ((j > this.VL) || (j < this.VM))
          {
            localObject = null;
            break;
          }
          int k = paramArrayList.size();
          if (k <= 0)
          {
            localObject = null;
            break;
          }
          ArrayList localArrayList = new ArrayList();
          for (int m = 0; m < k; m++)
          {
            ab localab = (ab)paramArrayList.get(m);
            if (localab != null)
            {
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append(localab.a);
              localStringBuilder.append("-");
              localStringBuilder.append(localab.b);
              localStringBuilder.append("-");
              localStringBuilder.append(localab.Uc);
              ap localap = this.Wd.ao(localStringBuilder.toString());
              ac localac = new ac(localab.a, localab.b, localab.Uc);
              localac.VZ = localab.VZ;
              localac.Wa = localab.Wa;
              if (localap != null)
                localac.Wb = localap.Wu;
              this.Wf.add(localac);
              if ((!paramBoolean) && (localac.Wb == null))
                localArrayList.add(new aa(localab.a, localab.b, localab.Uc));
            }
          }
          localObject = localArrayList;
          break;
          c(localObject);
        }
      }
    }
  }

  protected void b(Canvas paramCanvas)
  {
  }

  protected final void c(Canvas paramCanvas)
  {
    if (this.Wf == null)
      return;
    b(paramCanvas);
    a(paramCanvas);
  }

  protected final void c(List paramList)
  {
    synchronized (this.Wj)
    {
      if (this.Wh == null)
        return;
      this.Wh.clear();
      if (paramList == null)
        return;
    }
    int i = paramList.size();
    for (int j = 0; ; j++)
      if (j < i)
      {
        aa localaa = (aa)paramList.get(j);
        if ((localaa != null) && (!a(this.Wg, localaa)))
          this.Wh.add(localaa);
      }
      else
      {
        mD();
        return;
      }
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject)
      return true;
    if (!(paramObject instanceof ad))
      return false;
    ad localad = (ad)paramObject;
    return this.WG.equals(localad.WG);
  }

  public int hashCode()
  {
    return this.p;
  }

  protected final void kY()
  {
    int i = 0;
    if (this.WF == true);
    ArrayList localArrayList;
    int j;
    do
    {
      do
      {
        return;
        localArrayList = mC();
      }
      while (localArrayList == null);
      j = localArrayList.size();
    }
    while (j <= 0);
    boolean bool = ((aa)localArrayList.get(0)).UN;
    Boolean localBoolean2;
    if (this.WN != null)
    {
      y localy = new y(localArrayList, this.Vm.WY.mP());
      localy.VX = bool;
      localy.a(this);
      Boolean localBoolean1 = (Boolean)localy.mH();
      if (localBoolean1 == null)
        localBoolean1 = Boolean.valueOf(false);
      localy.a(null);
      localBoolean2 = localBoolean1;
    }
    while (true)
      if (i < j)
      {
        aa localaa = (aa)localArrayList.get(i);
        if (localaa != null)
          b(localaa);
        i++;
      }
      else
      {
        if (localBoolean2.booleanValue())
          break;
        a(null, localArrayList);
        return;
        localBoolean2 = null;
        i = 0;
      }
  }

  protected void lX()
  {
    this.Wd.Ws.lX();
    synchronized (this.Wj)
    {
      this.Wi.clear();
      this.Wh.clear();
      this.Wg.clear();
      if (this.Wf != null)
      {
        int i = this.Wf.size();
        int j = 0;
        if (j < i)
        {
          ac localac = (ac)this.Wf.remove(0);
          if (localac != null)
            localac.Wb = null;
          j++;
        }
      }
    }
  }

  protected void mB()
  {
    this.Wf = new ArrayList();
    this.Wg = new ArrayList();
    this.Wh = new ArrayList();
    this.Wi = new ArrayList();
  }

  protected int mE()
  {
    return 10;
  }

  protected void mF()
  {
  }

  protected void md()
  {
    this.WF = true;
    this.Wd.Ws.lX();
    synchronized (this.Wj)
    {
      this.Wi.clear();
      this.Wh.clear();
      this.Wh = null;
      this.Wg.clear();
      this.Wg = null;
      if (this.Wf != null)
      {
        int i = this.Wf.size();
        int j = 0;
        if (j < i)
        {
          ac localac = (ac)this.Wf.remove(0);
          if (localac != null)
            localac.Wb = null;
          j++;
        }
      }
    }
  }

  protected void me()
  {
  }

  public String toString()
  {
    return this.WG;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.ad
 * JD-Core Version:    0.6.2
 */