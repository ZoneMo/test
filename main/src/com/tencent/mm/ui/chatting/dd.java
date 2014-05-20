package com.tencent.mm.ui.chatting;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Map;

final class dd
{
  public int color;
  public int gML;
  public boolean gMM;
  public boolean gMN;
  public int gMP;
  public int gMQ;

  public static dd h(Map paramMap, String paramString)
  {
    String str1 = (String)paramMap.get(paramString + ".range");
    if (cj.hX(str1))
    {
      aa.e("MicroMsg.StyleNode", "parseFrom fail, range is null");
      return null;
    }
    if ((str1.length() < 5) || (str1.charAt(0) != '{') || (str1.charAt(-1 + str1.length()) != '}') || (!str1.contains(",")))
    {
      aa.e("MicroMsg.StyleNode", "parseFrom fail, range wrong format, range = " + str1);
      return null;
    }
    aa.d("MicroMsg.StyleNode", "parseFrom, range = " + str1);
    String[] arrayOfString = str1.substring(1, -1 + str1.length()).split(",");
    if ((arrayOfString == null) || (arrayOfString.length != 2))
    {
      aa.e("MicroMsg.StyleNode", "parseFrom fail, range wrong format, strs array length = " + arrayOfString.length);
      return null;
    }
    dd localdd = new dd();
    while (true)
    {
      String str2;
      try
      {
        localdd.gMP = Integer.parseInt(arrayOfString[0]);
        localdd.gMQ = (localdd.gMP + Integer.parseInt(arrayOfString[1]));
        str2 = (String)paramMap.get(paramString + ".font");
        if (cj.hX(str2))
        {
          aa.d("MicroMsg.StyleNode", "parseFrom, font is null, use default value");
          str3 = "m";
          localdd.gMM = db.wx(str3);
          localdd.gMN = db.wy(str3);
          localdd.gML = db.wz(str3);
          localdd.color = db.wA((String)paramMap.get(paramString + ".color"));
          return localdd;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.StyleNode", "parseFrom fail, ex = " + localException.getMessage());
        return null;
      }
      String str3 = str2.toLowerCase();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.dd
 * JD-Core Version:    0.6.2
 */