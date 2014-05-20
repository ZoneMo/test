package com.tencent.mm.ui.tools.jsapi;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ao
{
  public Map dOk;
  public String function;
  public String hpK;
  public String type;

  public static Map B(Bundle paramBundle)
  {
    if (paramBundle == null);
    Set localSet;
    do
    {
      return null;
      localSet = paramBundle.keySet();
    }
    while (localSet == null);
    HashMap localHashMap = new HashMap();
    Iterator localIterator = localSet.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramBundle.get(str));
    }
    return localHashMap;
  }

  public static Bundle r(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() == 0))
      return null;
    Bundle localBundle = new Bundle();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramMap.get(str);
      if ((localObject instanceof String[]))
        localBundle.putStringArray(str, (String[])localObject);
      else
        localBundle.putString(str, String.valueOf(localObject));
    }
    return localBundle;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.ao
 * JD-Core Version:    0.6.2
 */