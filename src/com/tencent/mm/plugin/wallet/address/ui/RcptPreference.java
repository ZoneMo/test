package com.tencent.mm.plugin.wallet.address.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.plugin.wallet.address.model.RcptItem;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.preference.Preference;

public class RcptPreference extends Preference
{
  private RcptItem eWg;

  public RcptPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public RcptPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public RcptPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aWC);
  }

  public final void a(RcptItem paramRcptItem)
  {
    if ((paramRcptItem == null) || (cj.hX(paramRcptItem.name)))
    {
      aa.e("MicroMsg.RcptPreference", "setZoneItem item = null");
      return;
    }
    setKey(paramRcptItem.code);
    this.eWg = paramRcptItem;
  }

  public final RcptItem anb()
  {
    return this.eWg;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    if (this.eWg == null)
      return;
    ((TextView)paramView.findViewById(i.aRJ)).setText(this.eWg.name);
    View localView = paramView.findViewById(16908312);
    if (this.eWg.eWb)
    {
      localView.setVisibility(0);
      return;
    }
    localView.setVisibility(8);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(i.content);
    localViewGroup.removeAllViews();
    localLayoutInflater.inflate(k.aWR, localViewGroup);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.RcptPreference
 * JD-Core Version:    0.6.2
 */