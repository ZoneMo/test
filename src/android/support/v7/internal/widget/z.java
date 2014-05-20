package android.support.v7.internal.widget;

final class z
  implements Runnable
{
  private z(u paramu)
  {
  }

  public final void run()
  {
    if (this.od.nP)
    {
      if (this.od.getAdapter() != null)
        this.od.post(this);
      return;
    }
    u.b(this.od);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.z
 * JD-Core Version:    0.6.2
 */