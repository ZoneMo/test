package com.tencent.mm.pluginsdk.model;

public final class n
{
  int Uo;
  int w;
  int x;
  int y;

  public final String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(this.x);
    arrayOfObject[1] = Integer.valueOf(this.y);
    arrayOfObject[2] = Integer.valueOf(this.Uo);
    arrayOfObject[3] = Integer.valueOf(this.w);
    return String.format("crop area[x=%d,y=%d,h=%d,w=%d]", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.n
 * JD-Core Version:    0.6.2
 */