package com.tencent.mm.model;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class dr
{
  private static bc cjX;
  private Map cjW = new HashMap();
  private String cjY = "";

  public static void a(bc parambc)
  {
    cjX = parambc;
  }

  public final void N(boolean paramBoolean)
  {
    long l1;
    try
    {
      l1 = cj.FD();
      this.cjY = "onAccountPostReset";
      Iterator localIterator = this.cjW.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        long l2 = cj.FD();
        ((bb)localEntry.getValue()).N(paramBoolean);
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = localEntry.getKey();
        arrayOfObject2[1] = Long.valueOf(cj.N(l2));
        aa.e("MicroMsg.MMCore.SubCoreMap", "onSubCoreAccountPostReset post:%s %d", arrayOfObject2);
      }
    }
    finally
    {
    }
    this.cjY = "";
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.cjW.size());
    arrayOfObject1[1] = Long.valueOf(cj.N(l1));
    aa.d("MicroMsg.MMCore.SubCoreMap", "onSubCoreAccountPostReset finish Count:%d time:%d", arrayOfObject1);
  }

  public final boolean a(String paramString, bb parambb)
  {
    boolean bool = false;
    try
    {
      if (!cj.hX(this.cjY))
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.cjY;
        aa.b("MicroMsg.MMCore.SubCoreMap", "REFUSE to addSubCore doing:%s", arrayOfObject);
      }
      while (true)
      {
        return bool;
        this.cjW.put(paramString, parambb);
        bool = true;
      }
    }
    finally
    {
    }
  }

  public final void b(b paramb)
  {
    long l1;
    try
    {
      l1 = cj.FD();
      this.cjY = "onAccountInit";
      Iterator localIterator = this.cjW.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        long l2 = cj.FD();
        ((bb)localEntry.getValue()).p(paramb.sX(), paramb.sW());
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = localEntry.getKey();
        arrayOfObject2[1] = Long.valueOf(cj.N(l2));
        aa.d("MicroMsg.MMCore.SubCoreMap", "onAccountInit %s time:%d", arrayOfObject2);
      }
    }
    finally
    {
    }
    this.cjY = "";
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.cjW.size());
    arrayOfObject1[1] = Long.valueOf(cj.N(l1));
    aa.d("MicroMsg.MMCore.SubCoreMap", "onSubCoreAccountInit finish Count:%d time:%d", arrayOfObject1);
  }

  public final void cG(int paramInt)
  {
    try
    {
      this.cjY = "clearSubCorePluginData";
      Iterator localIterator = this.cjW.entrySet().iterator();
      while (localIterator.hasNext())
        ((bb)((Map.Entry)localIterator.next()).getValue()).bJ(paramInt);
    }
    finally
    {
    }
    this.cjY = "";
  }

  public final bb dN(String paramString)
  {
    return (bb)this.cjW.get(paramString);
  }

  public final void vE()
  {
    try
    {
      if (!cj.hX(this.cjY))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.cjY;
        aa.c("MicroMsg.MMCore.SubCoreMap", "ERR: Looping:%s , failed to resetSubCore", arrayOfObject2);
      }
      while (true)
      {
        return;
        this.cjW.clear();
        if (cjX != null)
        {
          this.cjW = cjX.nU();
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Integer.valueOf(this.cjW.size());
          aa.d("MicroMsg.MMCore.SubCoreMap", "resetSubCore get sub core map from sub core factory. count:%d", arrayOfObject1);
        }
      }
    }
    finally
    {
    }
  }

  public final void vF()
  {
    long l1;
    try
    {
      l1 = cj.FD();
      this.cjY = "releaseSubCore";
      Iterator localIterator = this.cjW.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        long l2 = cj.FD();
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localEntry.getKey();
        aa.d("MicroMsg.MMCore.SubCoreMap", "releaseSubCore release:%s begin...", arrayOfObject2);
        ((bb)localEntry.getValue()).qy();
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = localEntry.getKey();
        arrayOfObject3[1] = Long.valueOf(cj.N(l2));
        aa.d("MicroMsg.MMCore.SubCoreMap", "releaseSubCore release:%s %d", arrayOfObject3);
      }
    }
    finally
    {
    }
    this.cjY = "";
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.cjW.size());
    arrayOfObject1[1] = Long.valueOf(cj.N(l1));
    aa.d("MicroMsg.MMCore.SubCoreMap", "releaseSubCore finish Count:%d time:%d", arrayOfObject1);
  }

  public final Map vG()
  {
    HashMap localHashMap;
    try
    {
      this.cjY = "getSubCoreBaseDBFacotries";
      localHashMap = new HashMap();
      Iterator localIterator = this.cjW.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (((bb)localEntry.getValue()).qz() != null)
          localHashMap.putAll(((bb)localEntry.getValue()).qz());
      }
    }
    finally
    {
    }
    this.cjY = "";
    return localHashMap;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.dr
 * JD-Core Version:    0.6.2
 */