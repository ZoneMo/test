package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.p;

public final class PluginTextPreference extends Preference
{
  private TextView cVm = null;
  private ImageView eFr = null;
  private int gGR;
  private String text;
  private int textColor;
  private int visibility;

  public PluginTextPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public PluginTextPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public PluginTextPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aWQ);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJv);
    this.gGR = localTypedArray.getResourceId(0, 0);
    this.text = localTypedArray.getString(1);
    this.textColor = localTypedArray.getColor(2, -7039852);
    localTypedArray.recycle();
  }

  public final void aIp()
  {
    this.visibility = 8;
  }

  public final void nt(int paramInt)
  {
    this.text = getContext().getString(paramInt);
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.eFr = ((ImageView)paramView.findViewById(i.aww));
    this.eFr.setImageResource(this.gGR);
    this.eFr.setVisibility(this.visibility);
    this.cVm = ((TextView)paramView.findViewById(i.aMM));
    this.cVm.setText(this.text);
    this.cVm.setTextColor(this.textColor);
  }

  public final void setImageResource(int paramInt)
  {
    this.gGR = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.PluginTextPreference
 * JD-Core Version:    0.6.2
 */