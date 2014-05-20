package com.tencent.mm.ui.chatting;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Map;

final class dc
  implements Comparable
{
  public int color;
  public int gML;
  public boolean gMM;
  public boolean gMN;
  public String gMO;
  public int offset;

  public static dc g(Map paramMap, String paramString)
  {
    dc localdc = new dc();
    while (true)
    {
      String str1;
      try
      {
        localdc.offset = Integer.parseInt((String)paramMap.get(paramString + ".offset"));
        str1 = (String)paramMap.get(paramString + ".font");
        if (cj.hX(str1))
        {
          aa.d("MicroMsg.LineNode", "parseFrom, font is null, use default value");
          str2 = "m";
          localdc.gMM = db.wx(str2);
          localdc.gMN = db.wy(str2);
          localdc.gML = db.wz(str2);
          localdc.color = db.wA((String)paramMap.get(paramString + ".color"));
          localdc.gMO = ((String)paramMap.get(paramString + ".chars"));
          if (!cj.hX(localdc.gMO))
            break;
          aa.e("MicroMsg.LineNode", "parseFrom fail, chars is null");
          return null;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.LineNode", "parseFrom fail, ex = " + localException.getMessage());
        return null;
      }
      String str2 = str1.toLowerCase();
    }
    return localdc;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.dc
 * JD-Core Version:    0.6.2
 */