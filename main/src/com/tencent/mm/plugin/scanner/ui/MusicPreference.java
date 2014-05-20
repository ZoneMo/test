package com.tencent.mm.plugin.scanner.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.ui.base.preference.Preference;

public class MusicPreference extends Preference
{
  public String eaU = "";
  public String eaV = "";
  private ImageButton ecL = null;
  private boolean ecM;
  private View.OnClickListener ecN;
  private v ecO;
  private int height = -1;
  public String wapurl = "";

  public MusicPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public MusicPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public MusicPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aWC);
    setWidgetLayoutResource(0);
  }

  public final void a(v paramv)
  {
    this.ecO = paramv;
  }

  public final void be(boolean paramBoolean)
  {
    this.ecM = paramBoolean;
    if (this.ecL != null)
    {
      if (paramBoolean)
        this.ecL.setImageResource(h.ahR);
    }
    else
      return;
    this.ecL.setImageResource(h.ahQ);
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    LinearLayout localLinearLayout = (LinearLayout)paramView.findViewById(i.aBw);
    if (this.height != -1)
      localLinearLayout.setMinimumHeight(this.height);
    if (this.ecN == null)
      this.ecN = new u(this);
    this.ecL = ((ImageButton)paramView.findViewById(i.aEn));
    this.ecL.setOnClickListener(this.ecN);
    if (this.ecM)
    {
      this.ecL.setImageResource(h.ahR);
      return;
    }
    this.ecL.setImageResource(h.ahQ);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(i.content);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), k.aXd, localViewGroup);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.MusicPreference
 * JD-Core Version:    0.6.2
 */