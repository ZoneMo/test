package com.tencent.mm.ui.chatting;

import android.content.res.Resources;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.tencent.mm.pluginsdk.af;
import com.tencent.mm.pluginsdk.ui.applet.am;
import java.lang.ref.WeakReference;

final class lu extends ClickableSpan
{
  private final am gRA;
  private final WeakReference gRB;
  private final WeakReference gRz;

  public lu(View paramView, af paramaf, am paramam)
  {
    this.gRB = new WeakReference(paramView);
    this.gRz = new WeakReference(paramaf);
    this.gRA = paramam;
  }

  public final void onClick(View paramView)
  {
    af localaf = (af)this.gRz.get();
    if (localaf != null)
      localaf.a(this.gRA);
  }

  public final void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
    View localView = (View)this.gRB.get();
    if (localView != null)
    {
      paramTextPaint.setColor(localView.getResources().getColor(2131492896));
      if (localView.isPressed())
        paramTextPaint.bgColor = -5908174;
    }
    else
    {
      return;
    }
    paramTextPaint.bgColor = 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.lu
 * JD-Core Version:    0.6.2
 */