package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;

public class MMAutoSizeTextView extends TextView
{
  private Paint edo;
  private float fiF;
  private float gyS;
  private float gyT;

  public MMAutoSizeTextView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public MMAutoSizeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  private void ap(String paramString, int paramInt)
  {
    int i;
    float f;
    if (paramInt > 0)
    {
      i = paramInt - getPaddingLeft() - getPaddingRight();
      f = this.fiF;
      this.edo.setTextSize(f);
    }
    while (true)
    {
      if ((f > this.gyS) && (this.edo.measureText(paramString) > i))
      {
        f -= 1.0F;
        if (f <= this.gyS)
          f = this.gyS;
      }
      else
      {
        setTextSize(f / this.gyT);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Float.valueOf(f / this.gyT);
        aa.e("MicroMsg.MMAutoSizeTextView", "resetSize size:%f", arrayOfObject);
        return;
      }
      this.edo.setTextSize(f);
    }
  }

  private void init()
  {
    this.edo = new Paint();
    this.edo.set(getPaint());
    this.fiF = getTextSize();
    this.gyS = 1.0F;
    this.gyT = getResources().getDisplayMetrics().density;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 != paramInt3)
      ap(getText().toString(), paramInt1);
  }

  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    ap(paramCharSequence.toString(), getWidth());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMAutoSizeTextView
 * JD-Core Version:    0.6.2
 */