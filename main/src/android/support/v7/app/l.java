package android.support.v7.app;

import android.graphics.drawable.Drawable;
import android.support.v7.internal.widget.ScrollingTabContainerView;
import android.view.View;

public final class l extends c
{
  private d hN;
  private Drawable hO;
  private CharSequence hP;
  private int hQ = -1;
  private View hR;
  private CharSequence mText;

  public l(k paramk)
  {
  }

  public final c a(d paramd)
  {
    this.hN = paramd;
    return this;
  }

  public final c a(CharSequence paramCharSequence)
  {
    this.mText = paramCharSequence;
    if (this.hQ >= 0)
      k.a(this.hS).P(this.hQ);
    return this;
  }

  public final d bm()
  {
    return this.hN;
  }

  public final CharSequence getContentDescription()
  {
    return this.hP;
  }

  public final View getCustomView()
  {
    return this.hR;
  }

  public final Drawable getIcon()
  {
    return this.hO;
  }

  public final int getPosition()
  {
    return this.hQ;
  }

  public final CharSequence getText()
  {
    return this.mText;
  }

  public final void select()
  {
    this.hS.b(this);
  }

  public final void x(int paramInt)
  {
    this.hQ = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.l
 * JD-Core Version:    0.6.2
 */