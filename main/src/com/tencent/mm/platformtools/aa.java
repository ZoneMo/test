package com.tencent.mm.platformtools;

final class aa
{
  boolean cGL;
  int cGM;
  int cGN;

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("fail[").append(this.cGL).append("],");
    localStringBuilder.append("tryTimes[").append(this.cGM).append("],");
    localStringBuilder.append("lastTS[").append(this.cGN).append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.aa
 * JD-Core Version:    0.6.2
 */