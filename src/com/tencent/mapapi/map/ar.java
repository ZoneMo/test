package com.tencent.mapapi.map;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class ar extends LinkedHashMap
{
  ar(aq paramaq, int paramInt)
  {
    super(paramInt, 0.75F, true);
  }

  protected final boolean removeEldestEntry(Map.Entry paramEntry)
  {
    return size() > aq.a(this.Wt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.ar
 * JD-Core Version:    0.6.2
 */