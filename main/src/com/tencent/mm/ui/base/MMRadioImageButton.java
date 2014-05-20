package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.ImageButton;

public class MMRadioImageButton extends ImageButton
  implements Checkable
{
  private boolean gBC;
  private boolean gBD = true;
  private boolean gBE;
  private cs gBF;
  private cs gBG;

  public MMRadioImageButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, -1);
  }

  public MMRadioImageButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final void a(cs paramcs)
  {
    this.gBG = paramcs;
  }

  public final boolean isCheckable()
  {
    return this.gBD;
  }

  public boolean isChecked()
  {
    return this.gBE;
  }

  public boolean performClick()
  {
    toggle();
    return false;
  }

  public final void setCheckable(boolean paramBoolean)
  {
    this.gBD = paramBoolean;
  }

  public void setChecked(boolean paramBoolean)
  {
    if (this.gBE != paramBoolean)
    {
      this.gBE = paramBoolean;
      setSelected(this.gBE);
      refreshDrawableState();
      if (!this.gBC);
    }
    else
    {
      return;
    }
    this.gBC = true;
    if (this.gBF != null)
    {
      cs localcs2 = this.gBF;
      localcs2.a(this);
    }
    if (this.gBG != null)
    {
      cs localcs1 = this.gBG;
      localcs1.a(this);
    }
    this.gBC = false;
  }

  public void toggle()
  {
    boolean bool;
    if (this.gBD)
      if (!isChecked())
      {
        if (this.gBE)
          break label29;
        bool = true;
        setChecked(bool);
      }
    label29: 
    do
    {
      return;
      bool = false;
      break;
      if (this.gBF != null)
        this.gBF.b(this);
    }
    while (this.gBG == null);
    this.gBG.b(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMRadioImageButton
 * JD-Core Version:    0.6.2
 */