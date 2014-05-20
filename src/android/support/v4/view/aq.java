package android.support.v4.view;

import android.database.DataSetObserver;

final class aq extends DataSetObserver
  implements by, bz
{
  private int dV;

  private aq(PagerTitleStrip paramPagerTitleStrip)
  {
  }

  public final void a(int paramInt, float paramFloat)
  {
    if (paramFloat > 0.5F)
      paramInt++;
    this.dW.a(paramInt, paramFloat, false);
  }

  public final void b(an paraman1, an paraman2)
  {
    this.dW.a(paraman1, paraman2);
  }

  public final void j(int paramInt)
  {
    if (this.dV == 0)
    {
      this.dW.a(this.dW.dE.ak(), this.dW.dE.ai());
      boolean bool = PagerTitleStrip.a(this.dW) < 0.0F;
      float f = 0.0F;
      if (!bool)
        f = PagerTitleStrip.a(this.dW);
      this.dW.a(this.dW.dE.ak(), f, true);
    }
  }

  public final void k(int paramInt)
  {
    this.dV = paramInt;
  }

  public final void onChanged()
  {
    this.dW.a(this.dW.dE.ak(), this.dW.dE.ai());
    boolean bool = PagerTitleStrip.a(this.dW) < 0.0F;
    float f = 0.0F;
    if (!bool)
      f = PagerTitleStrip.a(this.dW);
    this.dW.a(this.dW.dE.ak(), f, true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.aq
 * JD-Core Version:    0.6.2
 */