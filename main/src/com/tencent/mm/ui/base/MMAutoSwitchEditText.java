package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;

class MMAutoSwitchEditText extends EditText
{
  private af gyU = new af(this);

  public MMAutoSwitchEditText(Context paramContext)
  {
    this(paramContext, null);
  }

  public MMAutoSwitchEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    addTextChangedListener(this.gyU);
    setOnKeyListener(this.gyU);
  }

  public final void a(ag paramag)
  {
    this.gyU.a(paramag);
  }

  public final void a(ah paramah)
  {
    this.gyU.a(paramah);
  }

  public final void a(ai paramai)
  {
    this.gyU.b(paramai);
  }

  public final void mT(int paramInt)
  {
    this.gyU.mT(paramInt);
  }

  public final void setIndex(int paramInt)
  {
    this.gyU.setIndex(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMAutoSwitchEditText
 * JD-Core Version:    0.6.2
 */