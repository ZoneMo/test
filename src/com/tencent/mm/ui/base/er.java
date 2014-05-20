package com.tencent.mm.ui.base;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.tencent.mm.an.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;

final class er
  implements View.OnTouchListener
{
  er(VoiceSearchEditText paramVoiceSearchEditText)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    VoiceSearchEditText localVoiceSearchEditText = this.gFC;
    if (localVoiceSearchEditText.getCompoundDrawables()[2] == null)
      return false;
    if (paramMotionEvent.getAction() != 1)
      return true;
    VoiceSearchEditText.a(this.gFC, true);
    if ((VoiceSearchEditText.a(this.gFC)) && (VoiceSearchEditText.b(this.gFC)) && (localVoiceSearchEditText.getText().toString().equals("")))
      if (paramMotionEvent.getX() > localVoiceSearchEditText.getWidth() - localVoiceSearchEditText.getPaddingRight() - this.gFC.gFv.getIntrinsicWidth() - a.fromDPToPix(VoiceSearchEditText.c(localVoiceSearchEditText), 25))
      {
        if (VoiceSearchEditText.d(this.gFC) != null)
        {
          aa.i("MicroMsg.VoiceSearchEditText", "user clicked voice button");
          if ((this.gFC.getContext() instanceof MMActivity))
            ((MMActivity)this.gFC.getContext()).af(localVoiceSearchEditText);
          VoiceSearchEditText.d(this.gFC).onClick(this.gFC);
          return true;
        }
      }
      else
      {
        localVoiceSearchEditText.requestFocus();
        if ((this.gFC.getContext() instanceof Activity))
          MMActivity.t((Activity)this.gFC.getContext());
        if (VoiceSearchEditText.d(this.gFC) != null)
          VoiceSearchEditText.d(this.gFC).onClick(null);
      }
    while (true)
    {
      return false;
      if (localVoiceSearchEditText.getText().toString().length() > 0)
      {
        if (paramMotionEvent.getX() > localVoiceSearchEditText.getWidth() - localVoiceSearchEditText.getPaddingRight() - this.gFC.gFx.getIntrinsicWidth() - a.fromDPToPix(VoiceSearchEditText.c(localVoiceSearchEditText), 25))
        {
          localVoiceSearchEditText.setText("");
          if (VoiceSearchEditText.e(this.gFC) != null)
            VoiceSearchEditText.e(this.gFC);
          VoiceSearchEditText.f(this.gFC);
        }
        else if (!localVoiceSearchEditText.isFocused())
        {
          localVoiceSearchEditText.requestFocus();
          if ((this.gFC.getContext() instanceof Activity))
            MMActivity.t((Activity)this.gFC.getContext());
        }
      }
      else if (VoiceSearchEditText.d(this.gFC) != null)
        VoiceSearchEditText.d(this.gFC).onClick(null);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.er
 * JD-Core Version:    0.6.2
 */