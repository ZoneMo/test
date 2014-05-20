package com.tencent.mm.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.tencent.mm.sdk.platformtools.aa;

public class KeyboardLinearLayout extends LinearLayout
{
  private boolean doQ = false;
  private boolean eAZ;
  private ad glz;
  private int ue;

  public KeyboardLinearLayout(Context paramContext)
  {
    super(paramContext);
    reset();
  }

  public KeyboardLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    reset();
  }

  private void reset()
  {
    this.doQ = false;
    this.ue = 0;
    this.eAZ = false;
  }

  public final void a(ad paramad)
  {
    this.glz = paramad;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (!this.doQ)
    {
      this.doQ = true;
      this.ue = paramInt4;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.ue);
      aa.d("MicroMsg.KeyboardLinearLayout", "init height:%d", arrayOfObject);
      if (this.glz != null)
        this.glz.iS(-1);
      if ((this.doQ) && (!this.eAZ) && (this.ue > paramInt4))
      {
        this.eAZ = true;
        if (this.glz != null)
          this.glz.iS(-3);
        aa.w("MicroMsg.KeyboardLinearLayout", "show keyboard!! mHeight: " + this.ue + " b: " + paramInt4);
      }
      if ((this.doQ) && (this.eAZ) && (this.ue - paramInt4 <= 100))
      {
        this.eAZ = false;
        if (this.glz != null)
          this.glz.iS(-2);
        aa.w("MicroMsg.KeyboardLinearLayout", "hide keyboard!! mHeight: " + this.ue + " b: " + paramInt4);
      }
      return;
    }
    if (this.ue < paramInt4);
    for (int i = paramInt4; ; i = this.ue)
    {
      this.ue = i;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.KeyboardLinearLayout
 * JD-Core Version:    0.6.2
 */