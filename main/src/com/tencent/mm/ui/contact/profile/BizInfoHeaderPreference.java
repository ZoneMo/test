package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.m;
import com.tencent.mm.model.be;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.u;
import com.tencent.mm.p.v;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.preference.Preference;
import junit.framework.Assert;

public class BizInfoHeaderPreference extends Preference
  implements com.tencent.mm.m.p, com.tencent.mm.p.w, ar
{
  private MMActivity bLH;
  private i cQI;
  private ImageView frR;
  private TextView frS;
  private TextView frT;
  private boolean fsg = false;
  private ImageView gVP;
  private View gVQ;
  private String gVR;

  public BizInfoHeaderPreference(Context paramContext)
  {
    super(paramContext);
    this.bLH = ((MMActivity)paramContext);
    this.fsg = false;
  }

  public BizInfoHeaderPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.bLH = ((MMActivity)paramContext);
    this.fsg = false;
  }

  public BizInfoHeaderPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.bLH = ((MMActivity)paramContext);
    this.fsg = false;
  }

  private void FR()
  {
    if (!ati())
    {
      aa.w("MicroMsg.BizInfoHeaderPreference", "initView : bindView = " + this.fsg + "contact = " + this.cQI);
      return;
    }
    TextView localTextView = this.frS;
    localTextView.setText(com.tencent.mm.ao.b.e(this.bLH, au.hW(this.cQI.rq()) + " ", (int)this.frS.getTextSize()));
    Bitmap localBitmap;
    if (!TextUtils.isEmpty(this.gVR))
    {
      localBitmap = u.b(this.cQI.getUsername(), this.gVR, 2130838945);
      if (localBitmap == null)
        localBitmap = BitmapFactory.decodeResource(this.bLH.getResources(), 2130837772);
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
        this.frR.setImageBitmap(localBitmap);
      this.frR.setTag(this.cQI.getUsername());
      this.gVQ.setOnClickListener(new a(this));
      if (!this.cQI.rb())
        break label470;
      if (au.hX(this.cQI.rp()))
        break label375;
      this.frT.setVisibility(0);
      this.frT.setText(getContext().getString(2131167766) + this.cQI.rp());
    }
    label470: 
    while (true)
    {
      if (!this.cQI.re())
        break label482;
      this.gVP.setVisibility(0);
      return;
      com.tencent.mm.p.a locala = com.tencent.mm.p.p.eI(this.cQI.getUsername());
      if (locala != null)
      {
        this.gVR = locala.field_brandIconURL;
        localBitmap = u.b(locala.field_username, locala.field_brandIconURL, 2130838945);
        break;
      }
      localBitmap = c.a(this.cQI.getUsername(), true, -1);
      if ((localBitmap == null) || (localBitmap.isRecycled()))
        break;
      localBitmap = h.a(localBitmap, false, localBitmap.getWidth() / 2);
      break;
      label375: if ((!i.tD(this.cQI.getUsername())) && (!com.tencent.mm.model.w.cs(this.cQI.getUsername())))
      {
        String str = au.hW(this.cQI.rs());
        this.frT.setText(getContext().getString(2131167766) + str);
        this.frT.setVisibility(0);
      }
      else
      {
        this.frT.setVisibility(8);
        continue;
        this.frT.setVisibility(8);
      }
    }
    label482: this.gVP.setVisibility(8);
  }

  private boolean ati()
  {
    return (this.fsg) && (this.cQI != null);
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    if (!ati())
      aa.e("MicroMsg.BizInfoHeaderPreference", "initView : bindView = " + this.fsg + "contact = " + this.cQI);
    String str;
    do
    {
      return;
      str = (String)paramObject;
    }
    while ((au.hW(str).length() <= 0) || (this.cQI == null) || (!this.cQI.getUsername().equals(str)));
    this.cQI = be.uz().su().tO(str);
  }

  public final void c(i parami, String paramString)
  {
    this.gVR = paramString;
    onDetach();
    be.uz().su().a(this);
    af.vJ().d(this);
    ab.yf().a(this);
    this.cQI = parami;
    if (au.hW(parami.getUsername()).length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("initView: contact username is null", bool);
      FR();
      return;
    }
  }

  public final void eP(String paramString)
  {
    if ((this.cQI != null) && (paramString != null) && (paramString.equals(this.cQI.getUsername())))
      FR();
  }

  public final void ei(String paramString)
  {
    if (!ati())
      aa.e("MicroMsg.BizInfoHeaderPreference", "initView : bindView = " + this.fsg + "contact = " + this.cQI);
    do
    {
      return;
      if (au.hW(paramString).length() <= 0)
      {
        aa.e("MicroMsg.BizInfoHeaderPreference", "notifyChanged: user = " + paramString);
        return;
      }
    }
    while (!paramString.equals(this.cQI.getUsername()));
    FR();
  }

  public final void onBindView(View paramView)
  {
    aa.d("MicroMsg.BizInfoHeaderPreference", "onBindView");
    this.frS = ((TextView)paramView.findViewById(2131361970));
    this.frT = ((TextView)paramView.findViewById(2131362400));
    this.gVP = ((ImageView)paramView.findViewById(2131362401));
    this.frR = ((ImageView)paramView.findViewById(2131361969));
    this.gVQ = paramView.findViewById(2131362399);
    this.fsg = true;
    FR();
    super.onBindView(paramView);
  }

  public final void onDetach()
  {
    be.uz().su().b(this);
    af.vJ().e(this);
    ab.yf().b(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.BizInfoHeaderPreference
 * JD-Core Version:    0.6.2
 */