package com.tencent.mm.ui.account;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import com.tencent.mm.i;

final class b
  implements View.OnTouchListener
{
  b(a parama)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
      ((TextView)paramView.findViewById(i.amd)).setTextColor(-10395295);
    while (paramMotionEvent.getAction() != 1)
      return false;
    ((TextView)paramView.findViewById(i.amd)).setTextColor(-1);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.b
 * JD-Core Version:    0.6.2
 */