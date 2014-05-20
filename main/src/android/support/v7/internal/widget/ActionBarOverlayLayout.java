package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.v7.app.ActionBar;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.tencent.mm.d;

public class ActionBarOverlayLayout extends FrameLayout
{
  static final int[] me = arrayOfInt;
  private ActionBar ha;
  private int mc;
  private final Rect md = new Rect(0, 0, 0, 0);

  static
  {
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = d.actionBarSize;
  }

  public ActionBarOverlayLayout(Context paramContext)
  {
    super(paramContext);
    cG();
  }

  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    cG();
  }

  private void cG()
  {
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(me);
    this.mc = localTypedArray.getDimensionPixelSize(0, 0);
    localTypedArray.recycle();
  }

  public final void a(ActionBar paramActionBar)
  {
    this.ha = paramActionBar;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActionBarOverlayLayout
 * JD-Core Version:    0.6.2
 */