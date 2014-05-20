package com.tencent.mm.plugin.d.c;

import android.util.SparseArray;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class i
{
  private static SparseArray dZI = new SparseArray();
  private static boolean dZJ = true;

  public static void hx(int paramInt)
  {
    if (!dZJ)
      return;
    dZI.put(paramInt, Long.valueOf(cj.FD()));
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Long.valueOf(cj.FD());
    aa.e("MicroMsg.ReportLogInfo", "ReportLogInfo operationBegin eventID:%d  time:%d", arrayOfObject);
  }

  public static void hy(int paramInt)
  {
    if (!dZJ);
    Long localLong;
    do
    {
      return;
      localLong = (Long)dZI.get(paramInt);
    }
    while (localLong == null);
    if (localLong.longValue() == -1L)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      aa.e("MicroMsg.ReportLogInfo", "ReportLogInfo operationEnd not begin or stop eventID:%d ", arrayOfObject2);
      return;
    }
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Long.valueOf(cj.FD() - localLong.longValue());
    aa.d("MicroMsg.ReportLogInfo", "ReportLogInfo operationEnd eventID:%d  time:%d", arrayOfObject1);
    dZI.put(paramInt, Long.valueOf(-1L));
  }

  public static void hz(int paramInt)
  {
    if (!dZJ)
      return;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.ReportLogInfo", "ReportLogInfo stopOperation stop eventID:%d", arrayOfObject);
    dZI.put(paramInt, Long.valueOf(-1L));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.i
 * JD-Core Version:    0.6.2
 */