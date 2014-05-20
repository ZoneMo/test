package com.tencent.mm.ui.tools;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.RegionCodeDecoder.Region;
import com.tencent.mm.ui.base.preference.Preference;

public class ZonePreference extends Preference
{
  private RegionCodeDecoder.Region hnN;

  public ZonePreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public ZonePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ZonePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(2130903475);
  }

  public final void a(RegionCodeDecoder.Region paramRegion)
  {
    if ((paramRegion == null) || (au.hX(paramRegion.getName())) || (au.hX(paramRegion.getCode())))
    {
      aa.e("MicroMsg.ZonePreference", "setZoneItem item = null");
      return;
    }
    setKey(paramRegion.getCode());
    this.hnN = paramRegion;
  }

  public final RegionCodeDecoder.Region aOi()
  {
    return this.hnN;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    if (this.hnN == null)
      return;
    ((TextView)paramView.findViewById(2131363234)).setText(this.hnN.getName());
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    localLayoutInflater.inflate(2130903503, localViewGroup);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ZonePreference
 * JD-Core Version:    0.6.2
 */