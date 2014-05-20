package com.tencent.mm.ai;

import com.tencent.mm.sdk.platformtools.aa;

public final class o
{
  private String cAP;
  private boolean cAQ;
  private long time;

  public o(String paramString)
  {
    if (paramString.endsWith("\n"))
      paramString = paramString.substring(0, -1 + paramString.length());
    String[] arrayOfString = paramString.split(":");
    try
    {
      if (arrayOfString.length > 0)
        this.cAP = arrayOfString[0];
      if (arrayOfString.length > 1)
        this.time = Long.parseLong(arrayOfString[1]);
      if (arrayOfString.length > 2)
        this.cAQ = arrayOfString[2].equals("1");
      return;
    }
    catch (Exception localException)
    {
      this.cAP = "";
      this.cAQ = false;
      this.time = 0L;
      aa.e("MicroMsg.VideoContent", "VoiceContent parse failed.");
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
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.o
 * JD-Core Version:    0.6.2
 */