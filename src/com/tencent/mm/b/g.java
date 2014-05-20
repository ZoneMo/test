package com.tencent.mm.b;

import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.HashMap;
import java.util.Map;

public final class g
{
  private String bKy;
  private Map bKz = new HashMap();

  private g(String paramString)
  {
    if (paramString == null)
    {
      this.bKy = "http://dldir1.qq.com/foxmail/";
      return;
    }
    this.bKy = paramString;
  }

  public static g aB(String paramString)
  {
    Map localMap = u.aL(paramString, "patchupdate");
    if (localMap == null)
      return null;
    g localg = new g((String)localMap.get(".patchupdate.$base"));
    int i = cj.getInt((String)localMap.get(".patchupdate.$count"), 0);
    int j = 0;
    if (j >= i)
      return localg;
    StringBuilder localStringBuilder = new StringBuilder(".patchupdate.item");
    Object localObject;
    label82: h localh;
    if (j > 0)
    {
      localObject = Integer.valueOf(j);
      String str = localObject;
      localh = new h((String)localMap.get(str + ".$old"), (String)localMap.get(str + ".$new"), (String)localMap.get(str + ".$patch"), (String)localMap.get(str + ".$url"), cj.getInt((String)localMap.get(str + ".$size"), 0));
      if ((localh.bKA == null) || (localh.bKB == null) || (localh.bKC == null) || (localh.url == null))
        break label322;
    }
    label322: for (int k = 1; ; k = 0)
    {
      if (k != 0)
        localg.bKz.put(localh.bKA, localh);
      j++;
      break;
      localObject = "";
      break label82;
    }
  }

  public final h aA(String paramString)
  {
    return (h)this.bKz.get(paramString);
  }

  public final String nu()
  {
    return this.bKy;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.b.g
 * JD-Core Version:    0.6.2
 */