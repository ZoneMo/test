package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;
import com.tencent.mm.h;
import com.tencent.mm.sdk.platformtools.cj;

public class MMAutoCompleteTextView extends AutoCompleteTextView
{
  private ae gyO;
  final Drawable gyP = getResources().getDrawable(h.aif);

  public MMAutoCompleteTextView(Context paramContext)
  {
    this(paramContext, null);
  }

  public MMAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.gyP.setBounds(0, 0, this.gyP.getIntrinsicWidth(), this.gyP.getIntrinsicHeight());
    aGJ();
    setOnTouchListener(new ab(this));
    addTextChangedListener(new ac(this));
    setOnFocusChangeListener(new ad(this));
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

  public final void wi(String paramString)
  {
    if (!cj.hX(paramString))
    {
      this.gyO = new ae(this, paramString);
      addTextChangedListener(this.gyO);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMAutoCompleteTextView
 * JD-Core Version:    0.6.2
 */