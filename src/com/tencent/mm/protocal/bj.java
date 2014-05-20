package com.tencent.mm.protocal;

import android.annotation.SuppressLint;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

public final class bj
{

  @SuppressLint({"UseSparseArrays"})
  public static final Map map = new HashMap(100);

  static
  {
    Assert.assertTrue("giveup rtType now ! Use the funcid !", true);
    map.put(Integer.valueOf(10), Integer.valueOf(0));
    map.put(Integer.valueOf(11), Integer.valueOf(113));
    map.put(Integer.valueOf(12), Integer.valueOf(114));
    map.put(Integer.valueOf(20), Integer.valueOf(122));
    map.put(Integer.valueOf(24), Integer.valueOf(129));
    map.put(Integer.valueOf(26), Integer.valueOf(131));
    map.put(Integer.valueOf(28), Integer.valueOf(136));
    map.put(Integer.valueOf(30), Integer.valueOf(137));
    map.put(Integer.valueOf(32), Integer.valueOf(142));
    map.put(Integer.valueOf(37), Integer.valueOf(139));
    map.put(Integer.valueOf(38), Integer.valueOf(138));
    map.put(Integer.valueOf(39), Integer.valueOf(0));
    map.put(Integer.valueOf(44), Integer.valueOf(151));
  }

  public static int get(int paramInt)
  {
    if ((paramInt >= 100) || (paramInt <= 0))
      return paramInt;
    return cj.c((Integer)map.get(Integer.valueOf(paramInt)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.bj
 * JD-Core Version:    0.6.2
 */