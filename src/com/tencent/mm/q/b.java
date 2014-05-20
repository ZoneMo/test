package com.tencent.mm.q;

import com.tencent.mm.a.d;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class b
{
  private static final d chd = new d(100);
  public String bQq;
  public String cgI;
  public String coA;
  public String coB;
  public String coC;
  public String coD;
  public String coE;
  public String coF;
  public String coG;
  public String coH;
  public String coI;
  public String coz;

  public static final b eS(String paramString)
  {
    b localb1;
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.BrandQALogic", "empty xml to parse");
      localb1 = null;
    }
    int j;
    do
    {
      return localb1;
      int i = paramString.indexOf("<qamsg");
      if (i > 0)
        paramString = paramString.substring(i);
      j = paramString.hashCode();
      localb1 = (b)chd.get(Integer.valueOf(j));
    }
    while (localb1 != null);
    Map localMap = u.aL(paramString, "qamsg");
    if (localMap == null)
    {
      aa.e("MicroMsg.BrandQALogic", "parse msg failed");
      return null;
    }
    try
    {
      b localb2 = new b();
      localb2.cgI = ((String)localMap.get(".qamsg.$fromUser"));
      localb2.coz = ((String)localMap.get(".qamsg.$fromNickname"));
      localb2.bQq = ((String)localMap.get(".qamsg.$title"));
      localb2.coA = ((String)localMap.get(".qamsg.question.$id"));
      localb2.coB = ((String)localMap.get(".qamsg.question.$fromUser"));
      localb2.coC = ((String)localMap.get(".qamsg.question.content"));
      localb2.coD = ((String)localMap.get(".qamsg.answer.$id"));
      localb2.coE = ((String)localMap.get(".qamsg.answer.$fromUser"));
      localb2.coF = ((String)localMap.get(".qamsg.answer.content"));
      localb2.coD = ((String)localMap.get(".qamsg.answer1.$id"));
      localb2.coH = ((String)localMap.get(".qamsg.answer1.$fromUser"));
      localb2.coI = ((String)localMap.get(".qamsg.answer1.content"));
      chd.f(Integer.valueOf(j), localb2);
      return localb2;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.BrandQALogic", "parse qamessage xml failed");
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.q.b
 * JD-Core Version:    0.6.2
 */