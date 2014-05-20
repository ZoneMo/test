package com.tencent.mm.pluginsdk.ui.applet;

import android.app.Activity;
import android.content.res.Resources;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.tencent.mm.f;

public class av extends ClickableSpan
{
  private int bgColor;
  private boolean fpa = false;
  private aw fpb;
  private int linkColor;
  private String username;

  public av()
  {
  }

  public av(Activity paramActivity, String paramString, aw paramaw)
  {
    this.linkColor = paramActivity.getResources().getColor(f.aat);
    this.bgColor = paramActivity.getResources().getColor(f.aas);
    this.username = paramString;
    this.fpb = paramaw;
  }

  public final boolean asg()
  {
    return this.fpa;
  }

  public final void cv(boolean paramBoolean)
  {
    this.fpa = paramBoolean;
  }

  public void onClick(View paramView)
  {
    if (this.fpb != null)
      this.fpb.oH(this.username);
  }

  public void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setFakeBoldText(true);
    paramTextPaint.setColor(this.linkColor);
    if (this.fpa)
    {
      paramTextPaint.bgColor = this.bgColor;
      return;
    }
    paramTextPaint.bgColor = 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.av
 * JD-Core Version:    0.6.2
 */