package android.support.v7.internal.widget;

final class ak
  implements Runnable
{
  private int cc;
  private int oS;
  private boolean pl;

  ak(ProgressBarICS paramProgressBarICS, int paramInt1, int paramInt2)
  {
    this.cc = paramInt1;
    this.oS = paramInt2;
    this.pl = false;
  }

  public final void k(int paramInt1, int paramInt2)
  {
    this.cc = paramInt1;
    this.oS = paramInt2;
    this.pl = false;
  }

  public final void run()
  {
    ProgressBarICS localProgressBarICS = this.pm;
    int i = this.cc;
    int j = this.oS;
    ProgressBarICS.a(localProgressBarICS, i, j);
    ProgressBarICS.a(this.pm, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ak
 * JD-Core Version:    0.6.2
 */