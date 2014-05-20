package android.support.v4.view;

final class bu
  implements Runnable
{
  bu(ViewPager paramViewPager)
  {
  }

  public final void run()
  {
    ViewPager.a(this.fb);
    this.fb.populate();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bu
 * JD-Core Version:    0.6.2
 */