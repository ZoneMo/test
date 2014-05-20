package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.preference.Preference;

public class LicencePreference extends Preference
{
  private CheckBox frL;
  private Button frM;
  private String frN;
  private boolean frO = false;
  private View.OnClickListener frP;

  public LicencePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public LicencePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aXb);
  }

  public final void onBindView(View paramView)
  {
    super.onBindView(paramView);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    this.frL = ((CheckBox)localView.findViewById(i.alk));
    this.frM = ((Button)localView.findViewById(i.alj));
    this.frM.setOnClickListener(new p(this));
    if (!cj.hX(this.frN))
      this.frM.setText(this.frN);
    this.frL.setChecked(this.frO);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.LicencePreference
 * JD-Core Version:    0.6.2
 */