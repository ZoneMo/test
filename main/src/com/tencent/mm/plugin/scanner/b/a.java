package com.tencent.mm.plugin.scanner.b;

import android.graphics.Point;
import android.graphics.Rect;
import com.tencent.mm.sdk.platformtools.an;

public abstract class a
{
  protected static int efN = 0;
  protected d efJ = null;
  protected byte[] efK = null;
  protected byte[] efL = null;
  public String efM;
  public boolean[] efO = null;
  protected an efP = new an();

  public a(d paramd)
  {
    this.efJ = paramd;
  }

  public final void a(byte[] paramArrayOfByte, Point paramPoint, Rect paramRect, long paramLong)
  {
    this.efP.o(new b(this, paramPoint, paramRect, paramArrayOfByte, paramLong));
  }

  public abstract void aaF();

  public abstract void aaG();

  public abstract boolean b(byte[] paramArrayOfByte, Point paramPoint, Rect paramRect, long paramLong);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b.a
 * JD-Core Version:    0.6.2
 */