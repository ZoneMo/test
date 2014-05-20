package com.tencent.mm.storage;

import com.tencent.mm.sdk.platformtools.aa;
import java.util.Map;

public final class ac
{
  public String bNl;
  public String bPE;
  public String bPX;
  public String cAP;
  public int csY;
  public int ghB;
  public int ghC;
  public int ghD;
  public int ghE;
  public String ghF = "";
  public String id;

  public static ac a(Map paramMap, String paramString1, String paramString2)
  {
    if (paramMap == null)
      return null;
    ac localac = new ac();
    localac.ghF = paramString2;
    localac.bNl = paramString1;
    localac.id = ((String)paramMap.get(".msg.emoji.$idbuffer"));
    localac.cAP = ((String)paramMap.get(".msg.emoji.$fromusername"));
    String str = (String)paramMap.get(".msg.emoji.$androidmd5");
    localac.bPX = str;
    if (str == null)
      localac.bPX = ((String)paramMap.get(".msg.emoji.$md5"));
    try
    {
      localac.ghB = Integer.valueOf((String)paramMap.get(".msg.emoji.$type")).intValue();
      if (paramMap.get(".msg.emoji.$androidlen") != null)
        localac.ghC = Integer.valueOf((String)paramMap.get(".msg.emoji.$androidlen")).intValue();
      while (true)
      {
        if (paramMap.get(".msg.gameext.$type") != null)
          localac.ghD = Integer.valueOf((String)paramMap.get(".msg.gameext.$type")).intValue();
        if (paramMap.get(".msg.gameext.$content") != null)
          localac.ghE = Integer.valueOf((String)paramMap.get(".msg.gameext.$content")).intValue();
        if (paramMap.get(".msg.emoji.$productid") != null)
          localac.bPE = ((String)paramMap.get(".msg.emoji.$productid"));
        aa.d("MicroMsg.EmojiMsgInfo", "id:" + localac.id + " md5:" + localac.bPX + " emojitype:" + localac.ghB + " emojilen:" + localac.ghC + " gametype:" + localac.ghD + " gamecontent:" + localac.ghE + " productid:" + localac.bPE);
        return localac;
        if (paramMap.get(".msg.emoji.$len") != null)
          localac.ghC = Integer.valueOf((String)paramMap.get(".msg.emoji.$len")).intValue();
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ac
 * JD-Core Version:    0.6.2
 */