package com.tencent.mm.ui.contact.profile;

import android.app.ProgressDialog;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.preference.Preference;
import junit.framework.Assert;

public class NormalUserFooterPreference extends Preference
  implements al
{
  private MMActivity bLH;
  public ProgressDialog cIr = null;
  private i cQI;
  protected am ckD = new ca(this);
  private boolean dNx;
  private Button eDW;
  private int edN;
  private String frx = "";
  private boolean fsg;
  private boolean fst = false;
  private boolean gWT = false;
  private boolean gWU;
  private boolean gWV;
  private cb gWW;
  private View gWX;
  private Button gWY;
  private Button gWZ;
  private int gWq;
  private String gWx = "";
  private Button gXa;
  private View gXb;
  private Button gXc;
  private View gXd;
  private Button gXe;
  private Button gXf;
  private Button gXg;
  private Button gXh;
  private TextView gXi;
  public boolean gXj = false;
  private long ghN = 0L;

  public NormalUserFooterPreference(Context paramContext)
  {
    super(paramContext);
    this.bLH = ((MMActivity)paramContext);
    init();
  }

  public NormalUserFooterPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.bLH = ((MMActivity)paramContext);
    init();
  }

  public NormalUserFooterPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.bLH = ((MMActivity)paramContext);
    init();
  }

  private void FR()
  {
    if ((!this.fsg) || (this.cQI == null))
      aa.w("MicroMsg.NormalUserFooterPreference", "iniView : bindView = " + this.fsg + " contact = " + this.cQI);
    while (this.gWW == null)
      return;
    this.gWW.agI();
  }

  private void init()
  {
    this.fsg = false;
    this.gWW = null;
  }

  public final boolean Ji()
  {
    if (this.gWW != null)
      this.gWW.onDetach();
    this.ckD.removeAll();
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    return true;
  }

  public final boolean a(i parami, String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt1, int paramInt2, boolean paramBoolean4, boolean paramBoolean5, long paramLong, String paramString2)
  {
    Ji();
    boolean bool1;
    if (parami != null)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (au.hW(parami.getUsername()).length() <= 0)
        break label62;
    }
    label62: for (boolean bool2 = true; ; bool2 = false)
    {
      Assert.assertTrue(bool2);
      if (!i.tE(v.th()).equals(parami.getUsername()))
        break label68;
      return false;
      bool1 = false;
      break;
    }
    label68: this.cQI = parami;
    this.frx = paramString1;
    this.dNx = paramBoolean1;
    this.edN = paramInt1;
    this.gWq = paramInt2;
    this.gWV = au.a(Boolean.valueOf(w.cr(parami.getUsername())), false);
    this.gWT = paramBoolean4;
    this.gWU = paramBoolean5;
    this.ghN = paramLong;
    this.gWx = paramString2;
    this.gXj = false;
    boolean bool3;
    if (parami.field_deleteFlag == 1)
    {
      bool3 = true;
      this.fst = bool3;
      if ((!v.cm(parami.getUsername())) && (!be.uz().sz().has(parami.getUsername())))
        break label209;
      this.gWW = new cu(this);
    }
    while (true)
    {
      FR();
      return true;
      bool3 = false;
      break;
      label209: if (i.ty(parami.getUsername()))
      {
        this.gWW = new dg(this);
      }
      else if (w.cH(parami.getUsername()))
      {
        this.gWW = new db(this);
      }
      else if (w.cr(parami.getUsername()))
      {
        this.gWW = new df(this);
      }
      else if (i.tz(parami.getUsername()))
      {
        this.gWW = new dd(this);
      }
      else if ((parami.rb()) && (!i.tC(parami.getUsername())))
      {
        this.gWW = new cx(this);
        this.gXj = true;
      }
      else if (paramBoolean2)
      {
        this.gWW = new dm(this);
        this.gXj = true;
      }
      else if ((paramBoolean3) || (i.tC(parami.getUsername())))
      {
        this.gWW = new cv(this);
      }
      else
      {
        this.gWW = new cx(this);
        this.gXj = true;
      }
    }
  }

  public final void ca(String paramString)
  {
    if (au.hW(paramString).length() <= 0);
    while ((this.cQI == null) || ((!paramString.equals(this.cQI.getUsername())) && (!paramString.equals(this.cQI.aAs()))))
      return;
    this.cQI = be.uz().su().tO(this.cQI.getUsername());
  }

  public final void onBindView(View paramView)
  {
    aa.d("MicroMsg.NormalUserFooterPreference", "on bindView " + paramView.toString());
    this.gWX = paramView.findViewById(2131362386);
    this.gWY = ((Button)paramView.findViewById(2131362387));
    this.gWZ = ((Button)paramView.findViewById(2131362394));
    this.gXc = ((Button)paramView.findViewById(2131362390));
    this.gXb = paramView.findViewById(2131362389);
    this.gXa = ((Button)paramView.findViewById(2131362388));
    this.gXg = ((Button)paramView.findViewById(2131362395));
    this.gXd = paramView.findViewById(2131362391);
    this.gXe = ((Button)paramView.findViewById(2131362393));
    this.gXf = ((Button)paramView.findViewById(2131362392));
    this.eDW = ((Button)paramView.findViewById(2131362396));
    this.gXh = ((Button)paramView.findViewById(2131362397));
    this.gXi = ((TextView)paramView.findViewById(2131362398));
    this.fsg = true;
    FR();
    super.onBindView(paramView);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.NormalUserFooterPreference
 * JD-Core Version:    0.6.2
 */