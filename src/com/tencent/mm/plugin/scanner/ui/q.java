package com.tencent.mm.plugin.scanner.ui;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.ui.base.preference.Preference;

public final class q extends Preference
{
  private View aH;
  private TextView cXK;
  private Context context;
  private TextView ecB;
  private final int ecC = 5;
  private TextView ecD;
  public boolean ecE = false;
  public boolean ecF = false;
  private Boolean ecG;
  private View.OnTouchListener ecH;
  private ViewTreeObserver.OnGlobalLayoutListener ecI;
  private t ecJ;

  public q(Activity paramActivity)
  {
    super(paramActivity);
    setLayoutResource(k.aWT);
    this.context = paramActivity;
  }

  public final void a(t paramt)
  {
    this.ecJ = paramt;
  }

  public final View getView(View paramView, ViewGroup paramViewGroup)
  {
    if (this.aH == null)
      this.aH = onCreateView(paramViewGroup);
    onBindView(this.aH);
    return this.aH;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    if (this.cXK == null)
      this.cXK = ((TextView)paramView.findViewById(16908310));
    if (this.ecB == null)
      this.ecB = ((TextView)paramView.findViewById(16908304));
    if (this.ecD == null)
      this.ecD = ((TextView)paramView.findViewById(i.aBW));
    if (this.ecH == null)
    {
      this.ecH = new r(this);
      this.ecD.setOnTouchListener(this.ecH);
    }
    if (this.ecJ != null)
    {
      this.ecG = this.ecJ.mA(getKey());
      if (this.ecG != null)
        if (this.ecG.booleanValue())
        {
          this.ecD.setVisibility(8);
          this.ecB.setMaxLines(2000);
        }
    }
    while (true)
    {
      if (this.ecI == null)
      {
        this.ecI = new s(this);
        this.ecB.getViewTreeObserver().addOnGlobalLayoutListener(this.ecI);
      }
      return;
      this.ecD.setVisibility(0);
      this.ecB.setMaxLines(5);
      continue;
      this.ecD.setVisibility(8);
      this.ecB.setMaxLines(6);
      continue;
      this.ecD.setVisibility(8);
      this.ecB.setMaxLines(6);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.q
 * JD-Core Version:    0.6.2
 */