package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;

public class MMTextView extends TextView
{
  private boolean gCE = false;
  private dm gCF = null;
  private GestureDetector gCG = null;

  public MMTextView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public MMTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public MMTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    this.gCG = new GestureDetector(getContext(), new dl(this));
  }

  public final void a(dm paramdm)
  {
    this.gCF = paramdm;
  }

  public void cancelLongPress()
  {
    aa.d("MicroMsg.MMTextView", "cancelLongPress , should ignore Action Up Event next time");
    this.gCE = true;
    super.cancelLongPress();
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    int j = paramMotionEvent.getAction();
    if ((j == i) && (this.gCE))
    {
      int k = i;
      if (k == 0)
        break label42;
      aa.d("MicroMsg.MMTextView", "ignore Action Up Event this time");
    }
    while (true)
    {
      return i;
      int m = 0;
      break;
      label42: if (j == 0)
        this.gCE = false;
      if ((this.gCF != null) && (this.gCG != null));
      for (i = this.gCG.onTouchEvent(paramMotionEvent); i == 0; i = 0)
        return super.onTouchEvent(paramMotionEvent);
    }
  }

  public boolean performLongClick()
  {
    aa.d("MicroMsg.MMTextView", "performLongClick , should ignore Action Up Event next time");
    this.gCE = true;
    return super.performLongClick();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMTextView
 * JD-Core Version:    0.6.2
 */