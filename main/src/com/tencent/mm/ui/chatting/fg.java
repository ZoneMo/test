package com.tencent.mm.ui.chatting;

import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.text.SpannableString;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ScrollView;
import android.widget.TextView;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.dm;

final class fg
  implements dm
{
  private long dWX = 0L;
  private ChattingUI gMB = null;
  private ce gOe = null;
  private TextView gOf = null;
  private ScrollView gOg = null;
  private final int gOh = 3;
  private int gOi = 0;
  private int gOj = 0;
  private int gOk = 0;
  private boolean gOl = false;
  private boolean gOm = false;
  private View.OnTouchListener gps = null;
  private Handler handler = new fh(this);
  private TextView px = null;

  public fg(ChattingUI paramChattingUI)
  {
    this.gMB = paramChattingUI;
    View localView = View.inflate(paramChattingUI, 2130903177, null);
    this.gOg = ((ScrollView)localView.findViewById(2131362329));
    this.px = ((TextView)localView.findViewById(2131362330));
    this.gOf = ((TextView)localView.findViewById(2131362328));
    this.gps = new fi(this);
    this.gOg.setOnTouchListener(this.gps);
    localView.setOnClickListener(new fj(this));
    this.gOe = new ce(localView, -1, -1, (byte)0);
    this.gOe.setAnimationStyle(2131689921);
    this.gOe.update();
    this.gOe.setBackgroundDrawable(new ColorDrawable(16777215));
    this.gOe.setOnDismissListener(new fk(this));
  }

  public final boolean aj(View paramView)
  {
    if ((paramView.getTag() instanceof kk))
    {
      kk localkk = (kk)paramView.getTag();
      if ((localkk.dws == 0) && ((paramView instanceof TextView)) && (localkk.cad != null) && (this.gMB != null))
      {
        if ((this.gOe != null) && (!this.gOe.isShowing()))
        {
          this.gOg.scrollTo(0, 0);
          CharSequence localCharSequence = ((TextView)paramView).getText();
          if ((localCharSequence instanceof SpannableString))
          {
            String str = ((SpannableString)localCharSequence).toString();
            this.gOf.setText(str);
            this.gMB.gMi.gNr.e(this.gOf);
            localCharSequence = this.gOf.getText();
          }
          this.gMB.SM();
          this.px.setText(localCharSequence);
          this.gOe.showAtLocation(paramView.getRootView(), 17, 0, 0);
        }
        return true;
      }
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fg
 * JD-Core Version:    0.6.2
 */