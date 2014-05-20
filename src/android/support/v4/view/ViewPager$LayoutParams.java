package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public class ViewPager$LayoutParams extends ViewGroup.LayoutParams
{
  float fe = 0.0F;
  public boolean fg;
  boolean fh;
  int fi;
  public int gravity;
  int position;

  public ViewPager$LayoutParams()
  {
    super(-1, -1);
  }

  public ViewPager$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ViewPager.aq());
    this.gravity = localTypedArray.getInteger(0, 48);
    localTypedArray.recycle();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager.LayoutParams
 * JD-Core Version:    0.6.2
 */