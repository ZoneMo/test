package com.tencent.mm.plugin.d.c;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.d.a.h;
import com.tencent.mm.plugin.d.a.i;
import com.tencent.mm.plugin.d.b.e;
import com.tencent.mm.protocal.a.wa;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

final class c
  implements m
{
  private SparseBooleanArray dZx = new SparseBooleanArray();
  private SparseArray dZy = new SparseArray();

  public c()
  {
    b(Zf());
  }

  private static i Zf()
  {
    String str = j.Zj();
    aa.e("MicroMsg.GetReportRuleHelper", "get report strategy path = %s", new Object[] { str });
    byte[] arrayOfByte = cj.lF(str);
    Object[] arrayOfObject1 = new Object[1];
    boolean bool1;
    if (arrayOfByte == null)
    {
      bool1 = true;
      arrayOfObject1[0] = Boolean.valueOf(bool1);
      aa.e("MicroMsg.GetReportRuleHelper", "data is null ? %B", arrayOfObject1);
      if ((arrayOfByte == null) || (arrayOfByte.length <= 0))
        break label204;
    }
    while (true)
    {
      try
      {
        i locali2 = new i().T(arrayOfByte);
        locali1 = locali2;
        Object[] arrayOfObject2 = new Object[1];
        if (locali1 == null)
          break label210;
        bool2 = true;
        arrayOfObject2[0] = Boolean.valueOf(bool2);
        aa.e("MicroMsg.GetReportRuleHelper", "getStrategyList from file ok ? %B", arrayOfObject2);
        if (locali1 == null)
        {
          aa.w("MicroMsg.GetReportRuleHelper", "getStrategyList from file error, new a default strategy list, make sure kvstat must be reported");
          locali1 = new i();
          wa localwa = new wa();
          localwa.fXs = 1;
          localwa.fXt = 1;
          localwa.fXu = 3600;
          locali1.dZp.add(localwa);
          locali1.dZc = locali1.dZp.size();
        }
        return locali1;
        bool1 = false;
      }
      catch (Exception localException)
      {
        if (!p.mk(str))
          cj.deleteFile(str);
      }
      label204: i locali1 = null;
      continue;
      label210: boolean bool2 = false;
    }
  }

  private static boolean a(i parami)
  {
    boolean bool1 = true;
    String str = j.Zj();
    Object[] arrayOfObject1 = new Object[bool1];
    arrayOfObject1[0] = str;
    aa.e("MicroMsg.GetReportRuleHelper", "get report strategy path = %s", arrayOfObject1);
    if ((parami != null) && (str != null));
    try
    {
      byte[] arrayOfByte = parami.toByteArray();
      Object[] arrayOfObject3 = new Object[1];
      if (arrayOfByte == null);
      while (true)
      {
        arrayOfObject3[0] = Boolean.valueOf(bool1);
        aa.e("MicroMsg.GetReportRuleHelper", "data is null ? %B", arrayOfObject3);
        boolean bool4 = false;
        if (arrayOfByte != null)
        {
          boolean bool5 = cj.e(str, arrayOfByte);
          bool4 = bool5;
        }
        return bool4;
        bool1 = false;
      }
      Object[] arrayOfObject2 = new Object[2];
      boolean bool2;
      if (str == null)
      {
        bool2 = bool1;
        arrayOfObject2[0] = Boolean.valueOf(bool2);
        if (parami != null)
          break label148;
      }
      label148: for (boolean bool3 = bool1; ; bool3 = false)
      {
        arrayOfObject2[bool1] = Boolean.valueOf(bool3);
        aa.c("MicroMsg.GetReportRuleHelper", "saveReportRules error:configIni is null ? %B, rules is null ? %B", arrayOfObject2);
        return false;
        bool2 = false;
        break;
      }
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  private void b(i parami)
  {
    if (parami == null)
      return;
    SparseArray localSparseArray = new SparseArray();
    Iterator localIterator = parami.dZp.iterator();
    while (localIterator.hasNext())
    {
      wa localwa2 = (wa)localIterator.next();
      localSparseArray.put(localwa2.fXs, localwa2);
    }
    int i;
    wa localwa1;
    SparseBooleanArray localSparseBooleanArray3;
    int m;
    SparseBooleanArray localSparseBooleanArray2;
    int k;
    boolean bool2;
    try
    {
      this.dZx.clear();
      this.dZy.clear();
      i = 0;
      if (i >= localSparseArray.size())
        break label378;
      localwa1 = (wa)localSparseArray.valueAt(i);
      if (h.dZl)
      {
        aa.i("MicroMsg.GetReportRuleHelper", "it test model");
        switch (localwa1.fXs)
        {
        case 2:
        default:
          localSparseBooleanArray3 = this.dZx;
          m = localwa1.fXs;
          if (localwa1.fXt == 0)
            break;
          localSparseBooleanArray2 = localSparseBooleanArray3;
          k = m;
          bool2 = true;
        case 1:
        case 0:
        case 3:
          while (true)
          {
            label176: localSparseBooleanArray2.put(k, bool2);
            if (!this.dZx.get(localwa1.fXs))
              break;
            this.dZy.put(localwa1.fXs, Long.valueOf(hw(30)));
            break label381;
            localSparseBooleanArray2 = this.dZx;
            k = localwa1.fXs;
            bool2 = h.dZm;
            continue;
            localSparseBooleanArray2 = this.dZx;
            k = localwa1.fXs;
            bool2 = h.dZn;
            continue;
            localSparseBooleanArray2 = this.dZx;
            k = localwa1.fXs;
            bool2 = h.dZo;
          }
          this.dZy.put(localwa1.fXs, Long.valueOf(hw(localwa1.fXu)));
        }
      }
    }
    finally
    {
    }
    SparseBooleanArray localSparseBooleanArray1 = this.dZx;
    int j = localwa1.fXs;
    if (localwa1.fXt != 0);
    for (boolean bool1 = true; ; bool1 = false)
    {
      localSparseBooleanArray1.put(j, bool1);
      this.dZy.put(localwa1.fXs, Long.valueOf(hw(localwa1.fXu)));
      break label381;
      label378: return;
      label381: i++;
      break;
      localSparseBooleanArray2 = localSparseBooleanArray3;
      k = m;
      bool2 = false;
      break label176;
    }
  }

  private static long hw(int paramInt)
  {
    return Math.max(30000L, cj.lN(paramInt));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx == null)
    {
      aa.w("MicroMsg.GetReportRuleHelper", "onSceneEnd error: the arg scene is null");
      return;
    }
    switch (paramx.getType())
    {
    default:
      return;
    case 308:
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(paramInt1);
        arrayOfObject3[1] = Integer.valueOf(paramInt2);
        aa.c("MicroMsg.GetReportRuleHelper", "MMFunc_ReportStrategyCtrl, onSceneEnd error: errType is %d, errorCode is %d", arrayOfObject3);
        return;
      }
      LinkedList localLinkedList = ((e)paramx).YZ();
      i locali = new i();
      Iterator localIterator = localLinkedList.iterator();
      while (localIterator.hasNext())
      {
        wa localwa = (wa)localIterator.next();
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = localwa.toString();
        aa.e("MicroMsg.GetReportRuleHelper", "strategy item = %s", arrayOfObject5);
        locali.dZp.add(localwa);
      }
      locali.dZc = localLinkedList.size();
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(localLinkedList.size());
      aa.e("MicroMsg.GetReportRuleHelper", "get strategy list, size = %d", arrayOfObject4);
      be.ut().o(new d(this, locali));
      b(locali);
      return;
    case 309:
    case 310:
    case 311:
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = Integer.valueOf(paramInt1);
      arrayOfObject1[1] = Integer.valueOf(paramInt2);
      arrayOfObject1[2] = Integer.valueOf(paramx.getType());
      aa.c("MicroMsg.GetReportRuleHelper", "onSceneEnd error: errType is %d, errorCode is %d, scene.type is %d", arrayOfObject1);
      return;
    }
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = Integer.valueOf(paramInt1);
    arrayOfObject2[1] = Integer.valueOf(paramInt2);
    arrayOfObject2[2] = Integer.valueOf(paramx.getType());
    aa.e("MicroMsg.GetReportRuleHelper", "onSceneEnd ok: errType is %d, errorCode is %d, scene.type is %d", arrayOfObject2);
  }

  public final boolean hu(int paramInt)
  {
    try
    {
      boolean bool = this.dZx.get(paramInt, false);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long hv(int paramInt)
  {
    try
    {
      long l = ((Long)this.dZy.get(paramInt, Long.valueOf(0L))).longValue();
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.c
 * JD-Core Version:    0.6.2
 */