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
import com.tencent.mm.sdk.platformtools.e;

public class IconSummaryPreference extends Preference
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
  private int gFY = 8;
  private TextView gFZ = null;
  private int gGa = -1;
  private int height = -1;

  public IconSummaryPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public IconSummaryPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public IconSummaryPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
    setLayoutResource(k.aWC);
  }

  public final void aId()
  {
    this.daj = 0;
  }

  public final void aIe()
  {
    this.gFY = 0;
    if (this.gFZ != null)
      this.gFZ.setVisibility(this.gFY);
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    ImageView localImageView = (ImageView)paramView.findViewById(i.aww);
    if (localImageView != null)
    {
      localImageView.setVisibility(8);
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
      if (this.daq == null)
        this.daq = ((ImageView)paramView.findViewById(i.awB));
      if (this.dar == null)
        this.dar = ((ViewGroup)paramView.findViewById(i.aHz));
      if (this.das == null)
        this.das = paramView.findViewById(i.aHx);
      this.das.setVisibility(this.dap);
      if (this.dak == null)
        break label429;
      this.daq.setImageBitmap(this.dak);
    }
    while (true)
    {
      this.daq.setVisibility(this.dam);
      this.dar.setVisibility(this.dan);
      if (this.dat != null)
        this.daq.setLayoutParams(this.dat);
      this.gFZ = ((TextView)paramView.findViewById(i.aHB));
      if ((this.gFZ != null) && (getSummary() != null) && (getSummary().length() > 0))
      {
        this.gFZ.setText(getSummary());
        this.gFZ.setVisibility(this.gFY);
      }
      if ((this.gFZ != null) && (this.gGa != -1))
      {
        this.gFZ.setCompoundDrawablesWithIntrinsicBounds(this.gGa, 0, 0, 0);
        int i = e.a(getContext(), 2.0F);
        this.gFZ.setCompoundDrawablePadding(i);
        this.gFZ.setVisibility(this.gFY);
      }
      return;
      if (getIcon() != null)
      {
        localImageView.setImageDrawable(getIcon());
        localImageView.setVisibility(0);
        break;
      }
      if (aIr() == 0)
        break;
      localImageView.setImageResource(aIr());
      localImageView.setVisibility(0);
      break;
      label429: if (this.dal != -1)
        this.daq.setImageResource(this.dal);
    }
  }

  protected View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(i.content);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), k.aWN, localViewGroup);
    return localView;
  }

  public final void setSummary(int paramInt)
  {
    super.setSummary(paramInt);
    if ((this.gFZ != null) && (getSummary() != null) && (getSummary().length() > 0))
      this.gFZ.setText(getSummary());
  }

  public final void setSummary(CharSequence paramCharSequence)
  {
    super.setSummary(paramCharSequence);
    if ((this.gFZ != null) && (getSummary() != null) && (getSummary().length() > 0))
      this.gFZ.setText(getSummary());
  }

  public final void wq(String paramString)
  {
    this.dah = paramString;
    this.dai = 2130838937;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.IconSummaryPreference
 * JD-Core Version:    0.6.2
 */