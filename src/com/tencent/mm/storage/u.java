package com.tencent.mm.storage;

import com.tencent.mm.sdk.platformtools.aa;

public final class u
{
  private String bPX = "-1";
  private String cAP;
  private boolean cAQ;
  private String ggN = "";
  private long time;

  private u(String paramString)
  {
    if (paramString.endsWith("\n"))
      paramString = paramString.substring(0, -1 + paramString.length());
    while (true)
    {
      String[] arrayOfString = paramString.split(":", 5);
      try
      {
        int i = arrayOfString.length;
        int j = 0;
        if (i == 4)
        {
          boolean bool = i.tC(arrayOfString[0]);
          j = 0;
          if (bool)
            j = 1;
        }
        if (arrayOfString.length > j)
          this.cAP = arrayOfString[j];
        if (arrayOfString.length > j + 1)
          this.time = Long.parseLong(arrayOfString[(j + 1)]);
        if (arrayOfString.length > j + 2)
          this.cAQ = arrayOfString[(j + 2)].equals("1");
        if (arrayOfString.length > j + 3)
          this.bPX = arrayOfString[(j + 3)];
        if (arrayOfString.length > j + 4)
          this.ggN = arrayOfString[(j + 4)].replace("*#*", ":");
        return;
        this.ggN = paramString.replace(":", "*#*");
      }
      catch (Exception localException)
      {
        this.time = 0L;
        aa.e("MicroMsg.EmojiContent", "EmojiContent parse failed.");
      }
    }
  }

  public static String a(String paramString, long paramLong, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramString).append(":").append(paramLong).append(":");
    if (paramBoolean);
    for (int i = 1; ; i = 0)
      return i + "\n";
  }

  public static u uk(String paramString)
  {
    return new u(paramString);
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
      return i + ":" + this.bPX + ":" + this.ggN + "\n";
  }

  public final boolean Ev()
  {
    return this.cAQ;
  }

  public final void Ew()
  {
    this.cAQ = true;
  }

  public final String aAU()
  {
    return this.ggN;
  }

  public final void eX(String paramString)
  {
    this.bPX = paramString;
  }

  public final long getTime()
  {
    return this.time;
  }

  public final String uj(String paramString)
  {
    String str = paramString.replace(":", "*#*");
    StringBuilder localStringBuilder = new StringBuilder().append(this.cAP).append(":").append(this.time).append(":");
    if (this.cAQ);
    for (int i = 1; ; i = 0)
      return i + ":" + this.bPX + ":" + str + "\n";
  }

  public final String yK()
  {
    return this.bPX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.u
 * JD-Core Version:    0.6.2
 */