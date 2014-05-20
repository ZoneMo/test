package com.tencent.mm.protocal;

import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.protocal.a.mk;
import com.tencent.mm.protocal.a.wk;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;

public final class bk
{
  private static Map aB(byte[] paramArrayOfByte)
  {
    if (cj.A(paramArrayOfByte))
      return null;
    wk localwk;
    try
    {
      localwk = new wk().bX(paramArrayOfByte);
      if (localwk == null)
        return null;
    }
    catch (Exception localException)
    {
      return null;
    }
    aa.d("MicroMsg.SyncKeyUtil", "dkpush : keyCount:" + localwk.fUZ);
    LinkedList localLinkedList = localwk.fVa;
    if (localLinkedList.size() != localwk.fUZ)
      return null;
    HashMap localHashMap = new HashMap();
    for (int i = 0; i < localwk.fUZ; i++)
      localHashMap.put(Integer.valueOf(((mk)localLinkedList.get(i)).fAs), Long.valueOf(0xFFFFFFFF & ((mk)localLinkedList.get(i)).fNn));
    if (localHashMap.size() != localwk.fUZ)
      return null;
    return localHashMap;
  }

  public static byte[] c(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte1.length <= 0))
    {
      aa.d("MicroMsg.SyncKeyUtil", "empty old key, use new key");
      return paramArrayOfByte2;
    }
    if ((paramArrayOfByte2 == null) || (paramArrayOfByte2.length <= 0))
    {
      aa.e("MicroMsg.SyncKeyUtil", "newKey is null");
      return null;
    }
    PByteArray localPByteArray = new PByteArray();
    try
    {
      if (!MMProtocalJni.mergeSyncKey(paramArrayOfByte1, paramArrayOfByte2, localPByteArray))
      {
        aa.e("MicroMsg.SyncKeyUtil", "merge key failed");
        return null;
      }
    }
    catch (NoSuchMethodError localNoSuchMethodError)
    {
      throw new Error("NoSuchMethod MMProtocalJni.mergeSyncKey");
    }
    return localPByteArray.value;
  }

  public static boolean d(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Map localMap1 = aB(paramArrayOfByte1);
    if (localMap1 == null)
    {
      aa.d("MicroMsg.SyncKeyUtil", "dkpush local sync key failed");
      return true;
    }
    Map localMap2 = aB(paramArrayOfByte2);
    if (localMap2 == null)
    {
      aa.e("MicroMsg.SyncKeyUtil", "dkpush svr sync key failed");
      return false;
    }
    Iterator localIterator = localMap2.keySet().iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      Long localLong1 = (Long)localMap1.get(localInteger);
      Long localLong2 = (Long)localMap2.get(localInteger);
      if (localLong1 == null)
      {
        aa.d("MicroMsg.SyncKeyUtil", "dkpush local key null :" + localInteger);
        return true;
      }
      aa.d("MicroMsg.SyncKeyUtil", "dkpush local key:" + localInteger + " sv:" + localLong2 + " lv:" + localLong1);
      if (localLong2.longValue() > localLong1.longValue())
        return true;
    }
    aa.d("MicroMsg.SyncKeyUtil", "dkpush two sync key is the same");
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.bk
 * JD-Core Version:    0.6.2
 */