package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.EditText;
import com.tencent.mm.g;
import com.tencent.mm.h;

public class MMClearEditText extends EditText
{
  final Drawable gyP = getResources().getDrawable(h.aif);
  public String gzj = "";

  public MMClearEditText(Context paramContext)
  {
    super(paramContext);
    cG();
  }

  public MMClearEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    cG();
  }

  public MMClearEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    cG();
  }

  private void aGJ()
  {
    if ((getText().toString().equals("")) || (!isFocused()))
    {
      aGK();
      return;
    }
    setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], this.gyP, getCompoundDrawables()[3]);
  }

  private void aGK()
  {
    setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], null, getCompoundDrawables()[3]);
  }

  private void cG()
  {
    this.gyP.setBounds(0, 0, this.gyP.getIntrinsicWidth(), this.gyP.getIntrinsicHeight());
    aGJ();
    setMinHeight(this.gyP.getIntrinsicHeight() + 5 * getResources().getDimensionPixelSize(g.aaV));
    setOnTouchListener(new am(this));
    addTextChangedListener(new an(this));
    setOnFocusChangeListener(new ao(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMClearEditText
 * JD-Core Version:    0.6.2
 */