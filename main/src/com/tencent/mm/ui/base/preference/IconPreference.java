package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.i;
import com.tencent.mm.k;

public class IconPreference extends Preference
{
  private Context context;
  private String dah = "";
  private int dai = -1;
  private int daj = 8;
  private Bitmap dak = null;
  private int dal = -1;
  private int dam = 8;
  private int dan = 0;
  private int dap = 8;
  private ImageView daq = null;
  private ViewGroup dar = null;
  private View das = null;
  RelativeLayout.LayoutParams dat;
  private Drawable drawable;
  private int height = -1;

  public IconPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public IconPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
    setLayoutResource(k.aWC);
  }

  public final void aIc()
  {
    this.dat = new RelativeLayout.LayoutParams(-2, -2);
    this.dat.addRule(13);
    if (this.daq == null)
      return;
    this.daq.setLayoutParams(this.dat);
  }

  public final void aq(String paramString, int paramInt)
  {
    this.dah = paramString;
    this.dai = paramInt;
  }

  public final void np(int paramInt)
  {
    this.daj = paramInt;
  }

  public final void nq(int paramInt)
  {
    this.dal = paramInt;
    this.dak = null;
    if (this.daq != null)
      this.daq.setImageResource(paramInt);
  }

  public final void nr(int paramInt)
  {
    this.dam = paramInt;
    if (this.daq != null)
      this.daq.setVisibility(this.dam);
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    ImageView localImageView = (ImageView)paramView.findViewById(i.aww);
    if (localImageView != null)
    {
      if (this.drawable != null)
      {
        localImageView.setImageDrawable(this.drawable);
        localImageView.setVisibility(0);
      }
    }
    else
    {
      LinearLayout localLinearLayout = (LinearLayout)paramView.findViewById(i.aBw);
      if (this.height != -1)
        localLinearLayout.setMinimumHeight(this.height);
      TextView localTextView = (TextView)paramView.findViewById(i.aMN);
      if (localTextView != null)
      {
        localTextView.setVisibility(this.daj);
        localTextView.setText(this.dah);
        if (this.dai != -1)
          localTextView.setBackgroundDrawable(a.k(this.context, this.dai));
      }
      this.daq = ((ImageView)paramView.findViewById(i.awB));
      this.dar = ((ViewGroup)paramView.findViewById(i.aHz));
      this.das = paramView.findViewById(i.aHx);
      this.das.setVisibility(this.dap);
      if (this.dak == null)
        break label267;
      this.daq.setImageBitmap(this.dak);
    }
    while (true)
    {
      this.daq.setVisibility(this.dam);
      this.dar.setVisibility(this.dan);
      if (this.dat != null)
        this.daq.setLayoutParams(this.dat);
      return;
      if (aIr() != 0)
      {
        localImageView.setImageResource(aIr());
        localImageView.setVisibility(0);
        break;
      }
      localImageView.setVisibility(8);
      break;
      label267: if (this.dal != -1)
        this.daq.setImageResource(this.dal);
    }
  }

  protected View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(i.content);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), k.aWM, localViewGroup);
    return localView;
  }

  public final void setIconDrawable(Drawable paramDrawable)
  {
    this.drawable = paramDrawable;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.IconPreference
 * JD-Core Version:    0.6.2
 */