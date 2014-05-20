package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.MarginLayoutParams;
import com.tencent.mm.p;

public class ActionBar$LayoutParams extends ViewGroup.MarginLayoutParams
{
  public int gravity = -1;

  private ActionBar$LayoutParams()
  {
    super(-2, -1);
    this.gravity = 19;
  }

  public ActionBar$LayoutParams(byte paramByte)
  {
    this();
  }

  public ActionBar$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bIV);
    this.gravity = localTypedArray.getInt(0, -1);
    localTypedArray.recycle();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.ActionBar.LayoutParams
 * JD-Core Version:    0.6.2
 */