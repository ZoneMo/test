package android.support.v7.internal.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewDebug.ExportedProperty;
import android.widget.LinearLayout.LayoutParams;

public class ActionMenuView$LayoutParams extends LinearLayout.LayoutParams
{

  @ViewDebug.ExportedProperty
  public boolean jK;

  @ViewDebug.ExportedProperty
  public int jL;

  @ViewDebug.ExportedProperty
  public int jM;

  @ViewDebug.ExportedProperty
  public boolean jN;

  @ViewDebug.ExportedProperty
  public boolean jO;
  public boolean jP;

  public ActionMenuView$LayoutParams()
  {
    super(-2, -2);
    this.jK = false;
  }

  public ActionMenuView$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public ActionMenuView$LayoutParams(LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
    this.jK = paramLayoutParams.jK;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ActionMenuView.LayoutParams
 * JD-Core Version:    0.6.2
 */