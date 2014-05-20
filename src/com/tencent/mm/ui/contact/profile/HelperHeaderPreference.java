package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.m;
import com.tencent.mm.m.p;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.tools.fy;
import junit.framework.Assert;

public class HelperHeaderPreference extends Preference
  implements p
{
  private ImageView cID;
  private i cQI;
  private TextView dQa;
  private TextView eDL;
  private boolean gIh = false;
  private TextView gUr;
  private by gWS;

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

  private void FR()
  {
    if ((!this.gIh) || (this.cQI == null))
      aa.w("MicroMsg.HelperHeaderPreference", "initView : bindView = " + this.gIh + "contact = " + this.cQI);
    do
    {
      return;
      dY(this.cQI.getUsername());
      if (this.eDL != null)
        this.eDL.setText(this.cQI.rq());
    }
    while (this.gWS == null);
    this.gWS.a(this);
    CharSequence localCharSequence = this.gWS.getHint();
    if (localCharSequence != null)
    {
      this.gUr.setText(localCharSequence);
      this.gUr.setVisibility(0);
      return;
    }
    this.gUr.setVisibility(8);
  }

  private void dY(String paramString)
  {
    aa.d("MicroMsg.HelperHeaderPreference", "updateAvatar : user = " + paramString);
    if ((this.cID != null) && (this.cQI.getUsername().equals(paramString)))
      this.cID.setImageBitmap(c.a(paramString, false, -1));
  }

  public final void a(i parami, by paramby)
  {
    onDetach();
    if (parami != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      af.vJ().d(this);
      this.cQI = parami;
      this.gWS = paramby;
      FR();
      return;
    }
  }

  public final void dX(boolean paramBoolean)
  {
    if (this.gWS == null)
      return;
    if (paramBoolean)
    {
      this.dQa.setTextColor(fy.cf(getContext()));
      this.dQa.setText(2131165860);
      this.dQa.setCompoundDrawablesWithIntrinsicBounds(2130839485, 0, 0, 0);
      return;
    }
    this.dQa.setTextColor(fy.cg(getContext()));
    this.dQa.setText(2131165859);
    this.dQa.setCompoundDrawablesWithIntrinsicBounds(2130839484, 0, 0, 0);
  }

  public final void ei(String paramString)
  {
    dY(paramString);
  }

  public final void onBindView(View paramView)
  {
    this.cID = ((ImageView)paramView.findViewById(2131361969));
    this.dQa = ((TextView)paramView.findViewById(2131362402));
    this.eDL = ((TextView)paramView.findViewById(2131361970));
    this.gUr = ((TextView)paramView.findViewById(2131361971));
    this.gIh = true;
    FR();
    super.onBindView(paramView);
  }

  public final void onDetach()
  {
    if (this.gWS != null);
    af.vJ().e(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.HelperHeaderPreference
 * JD-Core Version:    0.6.2
 */