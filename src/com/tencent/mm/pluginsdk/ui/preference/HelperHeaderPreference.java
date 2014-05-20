package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.tools.fy;

public class HelperHeaderPreference extends Preference
{
  private o frJ = new o();

  public HelperHeaderPreference(Context paramContext)
  {
    super(paramContext);
  }

  public HelperHeaderPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public HelperHeaderPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final void kH(int paramInt)
  {
    this.frJ.status = paramInt;
    super.callChangeListener(null);
  }

  public final void onBindView(View paramView)
  {
    ImageView localImageView = (ImageView)paramView.findViewById(i.amX);
    TextView localTextView1 = (TextView)paramView.findViewById(i.aMr);
    TextView localTextView2 = (TextView)paramView.findViewById(i.aCQ);
    TextView localTextView3 = (TextView)paramView.findViewById(i.awc);
    if (localImageView != null)
      c.a(localImageView, this.frJ.user);
    if (localTextView1 != null)
      switch (this.frJ.status)
      {
      default:
      case 1:
      case 0:
      case 2:
      }
    while (true)
    {
      if (localTextView2 != null)
        localTextView2.setText(this.frJ.cTv);
      if (localTextView3 != null)
        localTextView3.setText(this.frJ.frK);
      super.onBindView(paramView);
      return;
      localTextView1.setVisibility(0);
      localTextView1.setTextColor(fy.cf(getContext()));
      localTextView1.setText(n.byx);
      localTextView1.setCompoundDrawablesWithIntrinsicBounds(h.aiY, 0, 0, 0);
      continue;
      localTextView1.setVisibility(0);
      localTextView1.setTextColor(fy.cg(getContext()));
      localTextView1.setText(n.byB);
      localTextView1.setCompoundDrawablesWithIntrinsicBounds(h.aiX, 0, 0, 0);
      continue;
      localTextView1.setVisibility(8);
    }
  }

  public final void u(String paramString1, String paramString2, String paramString3)
  {
    this.frJ.user = paramString1;
    this.frJ.cTv = paramString2;
    this.frJ.frK = paramString3;
    super.callChangeListener(null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.HelperHeaderPreference
 * JD-Core Version:    0.6.2
 */