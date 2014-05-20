package com.tencent.mm.ui.contact;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.tencent.mm.ui.MMActivity;

final class ak
  implements View.OnTouchListener
{
  ak(BizContactEntranceView paramBizContactEntranceView)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((BizContactEntranceView.a(this.gTb) instanceof MMActivity))
      ((MMActivity)BizContactEntranceView.a(this.gTb)).SM();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ak
 * JD-Core Version:    0.6.2
 */