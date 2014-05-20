package com.tencent.mm.pluginsdk.module.media;

import android.content.Context;
import android.graphics.Paint;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.sdk.platformtools.aa;

public class AutoSizeTextView extends TextView
{
  private float fiC;
  private float fiD;
  private Paint fiE;
  private float fiF;

  public AutoSizeTextView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public AutoSizeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public AutoSizeTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void aa(String paramString, int paramInt)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = paramString;
    arrayOfObject1[1] = Integer.valueOf(paramInt);
    aa.d("MicroMsg.AutoSizeTextView", "autoAdjustTextSize[text=%s, viewWidth=%d]", arrayOfObject1);
    if (paramInt <= 0)
      return;
    int i = paramInt - getPaddingLeft() - getPaddingRight();
    float f = this.fiF;
    this.fiE.setTextSize(f);
    while (true)
    {
      if ((f > this.fiC) && (this.fiE.measureText(paramString) > i))
      {
        f -= 1.0F;
        if (f <= this.fiC)
          f = this.fiC;
      }
      else
      {
        Object[] arrayOfObject2 = new Object[4];
        arrayOfObject2[0] = Float.valueOf(f);
        arrayOfObject2[1] = Float.valueOf(this.fiF);
        arrayOfObject2[2] = Float.valueOf(this.fiE.measureText(paramString));
        arrayOfObject2[3] = Integer.valueOf(i);
        aa.d("MicroMsg.AutoSizeTextView", "try size[%f], maxSize[%f], measureTextSize[%f], availableWidth[%d]", arrayOfObject2);
        setTextSize(0, f);
        return;
      }
      this.fiE.setTextSize(f);
    }
  }

  private void init()
  {
    setSingleLine();
    setEllipsize(TextUtils.TruncateAt.END);
    this.fiC = a.fromDPToPix(getContext(), 8);
    this.fiD = a.fromDPToPix(getContext(), 22);
    this.fiE = new Paint();
    this.fiE.set(getPaint());
    this.fiF = getTextSize();
    if (this.fiF <= this.fiC)
      this.fiF = this.fiD;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    aa.w("MicroMsg.AutoSizeTextView", "on size changed");
    if (paramInt1 != paramInt3)
      aa(getText().toString(), paramInt1);
  }

  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    aa.w("MicroMsg.AutoSizeTextView", "on text changed");
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    aa(paramCharSequence.toString(), getWidth());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.AutoSizeTextView
 * JD-Core Version:    0.6.2
 */