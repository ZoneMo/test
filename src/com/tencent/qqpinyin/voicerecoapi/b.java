package com.tencent.qqpinyin.voicerecoapi;

public final class b extends Exception
{
  private String dsB = "";
  private int dsC;

  b(int paramInt)
  {
    this.dsC = paramInt;
    String str;
    switch (paramInt)
    {
    default:
      str = "unknown error";
    case -101:
    case -100:
    case -102:
    case -103:
    case -104:
    }
    while (true)
    {
      this.dsB = str;
      new StringBuilder("errorCode: ").append(this.dsC).append("\t msg: ").append(this.dsB).toString();
      return;
      str = "speex engine error";
      continue;
      str = "out of memory";
      continue;
      str = "should init at first";
      continue;
      str = "already init";
      continue;
      str = "null param or 0 length";
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qqpinyin.voicerecoapi.b
 * JD-Core Version:    0.6.2
 */