package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.text.Editable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.EditText;
import com.tencent.mm.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public class AutoHintSizeEditText extends EditText
{
  private float gFD;
  private Paint gFE;
  private String gFF = "";
  private int gFG = -2147483648;
  private float gFH;

  public AutoHintSizeEditText(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public AutoHintSizeEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public AutoHintSizeEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void a(Editable paramEditable, CharSequence paramCharSequence, int paramInt)
  {
    if ((paramEditable != null) && (!cj.hX(paramEditable.toString())))
      if (getTextSize() != this.gFD)
      {
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Float.valueOf(this.gFD);
        aa.f("MicroMsg.AutoHintSizeEdittext", "content not null, reset text size %f", arrayOfObject4);
        setTextSize(0, this.gFD);
      }
    while (true)
    {
      return;
      if ((paramCharSequence == null) || (cj.hX(paramCharSequence.toString())))
      {
        if (getTextSize() != this.gFD)
        {
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Float.valueOf(this.gFD);
          aa.f("MicroMsg.AutoHintSizeEdittext", "hint is null, reset text size %f", arrayOfObject1);
          setTextSize(0, this.gFD);
        }
      }
      else
      {
        String str = paramCharSequence.toString();
        if ((this.gFF.equals(str)) && (this.gFG == paramInt))
        {
          if (getTextSize() != this.gFH)
          {
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = Float.valueOf(this.gFH);
            aa.f("MicroMsg.AutoHintSizeEdittext", "use last hint text size %f", arrayOfObject3);
            setTextSize(0, this.gFH);
          }
        }
        else
        {
          this.gFF = str;
          this.gFG = paramInt;
          if (getPaint().measureText(str) > paramInt)
          {
            int i = getResources().getDimensionPixelSize(g.aaZ);
            int j = com.tencent.mm.an.a.fromDPToPix(getContext(), 1);
            int k = (int)this.gFD - j;
            while (k > i)
            {
              this.gFE.setTextSize(k);
              if (this.gFE.measureText(str) < paramInt)
              {
                Object[] arrayOfObject2 = new Object[1];
                arrayOfObject2[0] = Integer.valueOf(k);
                aa.f("MicroMsg.AutoHintSizeEdittext", "get new hint text size %d", arrayOfObject2);
                this.gFH = k;
                setTextSize(0, k);
                return;
              }
              k -= j;
            }
          }
        }
      }
    }
  }

  private void init()
  {
    this.gFD = getTextSize();
    this.gFH = this.gFD;
    this.gFE = new Paint(getPaint());
    addTextChangedListener(new a(this));
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    aa.e("MicroMsg.AutoHintSizeEdittext", "on layout, changed %B", arrayOfObject);
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean)
      a(getText(), getHint(), paramInt3 - paramInt1 - getPaddingLeft() - getPaddingRight());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.AutoHintSizeEditText
 * JD-Core Version:    0.6.2
 */