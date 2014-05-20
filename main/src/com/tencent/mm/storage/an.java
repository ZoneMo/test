package com.tencent.mm.storage;

import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class an
{
  private String content = "";
  private String cxp = "";
  private String dNO;
  private String ghX = "";
  private boolean ghY = false;
  private String title = "";

  public static an uT(String paramString)
  {
    an localan = new an();
    Map localMap = u.aL(paramString, "msg");
    if (localMap != null);
    try
    {
      localan.title = ((String)localMap.get(".msg.pushmail.content.subject"));
      localan.content = ((String)localMap.get(".msg.pushmail.content.digest"));
      localan.cxp = ((String)localMap.get(".msg.pushmail.content.sender"));
      localan.ghX = ((String)localMap.get(".msg.pushmail.waplink"));
      localan.ghY = cj.hW((String)localMap.get(".msg.pushmail.content.attach")).equalsIgnoreCase("true");
      localan.dNO = ((String)localMap.get(".msg.pushmail.mailid"));
      return localan;
    }
    catch (Exception localException)
    {
    }
    return localan;
  }

  public final String Ch()
  {
    return this.cxp;
  }

  public final String aCH()
  {
    return this.ghX;
  }

  public final boolean aCI()
  {
    return this.ghY;
  }

  public final String aCJ()
  {
    return this.dNO;
  }

  public final String getContent()
  {
    return this.content;
  }

  public final String getTitle()
  {
    return this.title;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.an
 * JD-Core Version:    0.6.2
 */