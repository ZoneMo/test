package com.tencent.mm.ui.base;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.mm.h;

public class VoiceSearchEditText extends EditText
{
  private View.OnClickListener cGR;
  private Context context;
  private boolean gFA = false;
  private boolean gFB = false;
  final Drawable gFv = getResources().getDrawable(h.ajS);
  final Drawable gFw = null;
  final Drawable gFx = getResources().getDrawable(h.aif);
  private eu gFy;
  private boolean gFz = true;
  public String gzj = "";

  public VoiceSearchEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    r(paramContext);
  }

  public VoiceSearchEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    r(paramContext);
  }

  private void r(Context paramContext)
  {
    this.context = paramContext;
    this.gFA = false;
    this.gFv.setBounds(0, 0, this.gFv.getIntrinsicWidth(), this.gFv.getIntrinsicHeight());
    this.gFx.setBounds(0, 0, this.gFx.getIntrinsicWidth(), this.gFx.getIntrinsicHeight());
    this.gFz = true;
    if (this.gFA)
    {
      setCompoundDrawables(this.gFw, getCompoundDrawables()[1], this.gFv, getCompoundDrawables()[3]);
      setOnTouchListener(new er(this));
      addTextChangedListener(new es(this));
      setOnFocusChangeListener(new et(this));
      if ((paramContext instanceof Activity))
      {
        View localView = ((Activity)paramContext).getCurrentFocus();
        if ((localView == null) || (localView != this))
          break label227;
      }
    }
    label227: for (this.gFB = true; ; this.gFB = false)
    {
      requestFocus();
      return;
      if (getText().toString().length() > 0)
      {
        setCompoundDrawables(this.gFw, getCompoundDrawables()[1], this.gFx, getCompoundDrawables()[3]);
        break;
      }
      setCompoundDrawables(this.gFw, getCompoundDrawables()[1], null, getCompoundDrawables()[3]);
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.VoiceSearchEditText
 * JD-Core Version:    0.6.2
 */