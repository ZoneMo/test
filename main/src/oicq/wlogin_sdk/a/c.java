package oicq.wlogin_sdk.a;

import java.io.Serializable;
import java.util.TreeMap;
import oicq.wlogin_sdk.c.f;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;
import oicq.wlogin_sdk.sharemem.WloginSimpleInfo;

public final class c
  implements Serializable, Cloneable
{
  public WloginSimpleInfo hwX = new WloginSimpleInfo();
  public TreeMap hwY = new TreeMap();
  public long hwZ = 0L;

  public final int a(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, byte[] paramArrayOfByte5, byte[] paramArrayOfByte6, byte[] paramArrayOfByte7, byte[] paramArrayOfByte8, byte[] paramArrayOfByte9, byte[] paramArrayOfByte10, byte[] paramArrayOfByte11, byte[] paramArrayOfByte12, byte[][] paramArrayOfByte)
  {
    WloginSigInfo localWloginSigInfo = (WloginSigInfo)this.hwY.get(new Long(paramLong1));
    if (localWloginSigInfo != null)
    {
      TreeMap localTreeMap2 = this.hwY;
      Long localLong2 = new Long(paramLong1);
      localTreeMap2.put(localLong2, localWloginSigInfo.a(paramLong2, paramLong3, paramLong4, paramLong5, paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3, paramArrayOfByte4, paramArrayOfByte5, paramArrayOfByte6, paramArrayOfByte7, paramArrayOfByte8, paramArrayOfByte9, paramArrayOfByte10, paramArrayOfByte11, paramArrayOfByte12, paramArrayOfByte));
    }
    while (true)
    {
      return 0;
      TreeMap localTreeMap1 = this.hwY;
      Long localLong1 = new Long(paramLong1);
      localTreeMap1.put(localLong1, new WloginSigInfo(paramLong2, paramLong3, paramLong4, paramLong5, paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3, paramArrayOfByte4, paramArrayOfByte5, paramArrayOfByte6, paramArrayOfByte7, paramArrayOfByte8, paramArrayOfByte9, paramArrayOfByte10, paramArrayOfByte11, paramArrayOfByte12, paramArrayOfByte));
    }
  }

  public final int a(long paramLong1, long paramLong2, long paramLong3, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.hwY.put(new Long(paramLong1), new WloginSigInfo(paramLong2, paramLong3, paramArrayOfByte1, paramArrayOfByte2));
    return 0;
  }

  public final c aQp()
  {
    try
    {
      c localc = (c)clone();
      return localc;
    }
    catch (Exception localException)
    {
      f.tf(localException.toString());
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.a.c
 * JD-Core Version:    0.6.2
 */