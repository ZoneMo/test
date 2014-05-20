package com.tencent.mm.ar;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class e
{
  int bRd;
  String className;
  int gjX;
  int gjY;
  String gjZ;

  public e(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    this.className = paramString;
    this.bRd = paramInt1;
    this.gjX = paramInt2;
    this.gjY = paramInt3;
    StringBuilder localStringBuilder1 = new StringBuilder();
    if (cj.hX(paramString))
    {
      localStringBuilder1.append(a.gjR).append("WEIXIN_").append(System.currentTimeMillis()).append(".trace");
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = localStringBuilder1.toString();
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      aa.d("MicroMsg.TraceDebugManager", "TRACE startMethod path %s traceSize : %d", arrayOfObject);
      this.gjZ = localStringBuilder1.toString();
      return;
    }
    StringBuilder localStringBuilder2 = localStringBuilder1.append(a.gjR).append(paramString).append("_");
    String str = "";
    switch (paramInt1)
    {
    default:
    case 1:
    case 3:
    case 2:
    case 4:
    case 5:
    }
    while (true)
    {
      localStringBuilder2.append(str).append(".trace");
      break;
      str = "onResume";
      continue;
      str = "onCreate";
      continue;
      str = "onPause";
      continue;
      str = "onScrool";
      continue;
      str = "all";
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ar.e
 * JD-Core Version:    0.6.2
 */