package android.support.v4.c;

public final class d
{
  private static final Object cP = new Object();
  private boolean cQ;
  private int[] cR;
  private Object[] cS;
  private int cT;

  private void gc()
  {
    int i = this.cT;
    int[] arrayOfInt = this.cR;
    Object[] arrayOfObject = this.cS;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      Object localObject = arrayOfObject[j];
      if (localObject != cP)
      {
        if (j != k)
        {
          arrayOfInt[k] = arrayOfInt[j];
          arrayOfObject[k] = localObject;
        }
        k++;
      }
      j++;
    }
    this.cQ = false;
    this.cT = k;
  }

  public final void clear()
  {
    int i = this.cT;
    Object[] arrayOfObject = this.cS;
    for (int j = 0; j < i; j++)
      arrayOfObject[j] = null;
    this.cT = 0;
    this.cQ = false;
  }

  public final int keyAt(int paramInt)
  {
    if (this.cQ)
      gc();
    return this.cR[paramInt];
  }

  public final int size()
  {
    if (this.cQ)
      gc();
    return this.cT;
  }

  public final Object valueAt(int paramInt)
  {
    if (this.cQ)
      gc();
    return this.cS[paramInt];
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.c.d
 * JD-Core Version:    0.6.2
 */