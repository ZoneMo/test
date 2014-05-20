package com.tencent.mm.modelvoice;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;

public final class bf
{
  private String cAP;
  private boolean cAQ;
  private long time;

  public bf(String paramString)
  {
    while (true)
    {
      try
      {
        if (paramString.endsWith("\n"))
          paramString = paramString.substring(0, -1 + paramString.length());
        String[] arrayOfString = paramString.split(":");
        if ((arrayOfString.length == 4) && (i.tC(arrayOfString[0])))
        {
          i = 1;
          if (arrayOfString.length > i)
            this.cAP = arrayOfString[i];
          if (arrayOfString.length > i + 1)
            this.time = Long.parseLong(arrayOfString[(i + 1)]);
          if (arrayOfString.length > i + 2)
            this.cAQ = arrayOfString[(i + 2)].equals("1");
          return;
        }
      }
      catch (Exception localException)
      {
        this.cAP = "";
        this.cAQ = false;
        this.time = 0L;
        aa.e("MicroMsg.VoiceContent", "VoiceContent parse failed.");
        return;
      }
      int i = 0;
    }
  }

  public static String a(String paramString, long paramLong, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramString).append(":").append(paramLong).append(":");
    if (paramBoolean);
    for (int i = 1; ; i = 0)
      return i + "\n";
  }

  public final String DG()
  {
    return this.cAP;
  }

  public final String Eu()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(this.cAP).append(":").append(this.time).append(":");
    if (this.cAQ);
    for (int i = 1; ; i = 0)
      return i + "\n";
  }

  public final boolean Ev()
  {
    return this.cAQ;
  }

  public final void Ew()
  {
    this.cAQ = true;
  }

  public final long getTime()
  {
    return this.time;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bf
 * JD-Core Version:    0.6.2
 */