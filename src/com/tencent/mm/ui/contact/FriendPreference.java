package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.a.j;
import com.tencent.mm.an.a;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.m;
import com.tencent.mm.m.p;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.preference.Preference;
import java.io.ByteArrayOutputStream;
import junit.framework.Assert;

public class FriendPreference extends Preference
  implements p
{
  private MMActivity bLH;
  private com.tencent.mm.storage.i cQI;
  private TextView cXK;
  private ImageView eFr;
  private TextView ecB;
  private String frH;
  private boolean fsg;
  private ImageView gUb;
  private com.tencent.mm.modelfriend.h gUc;
  private String gUd;
  private long gUe;
  private int gUf;
  private long ghN;

  public FriendPreference(Context paramContext)
  {
    super(paramContext);
    this.bLH = ((MMActivity)paramContext);
    init();
  }

  public FriendPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.bLH = ((MMActivity)paramContext);
    init();
  }

  public FriendPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(2130903475);
    setWidgetLayoutResource(2130903528);
    init();
  }

  private void FR()
  {
    if ((this.cQI == null) || (!this.fsg))
    {
      aa.d("MicroMsg.FriendPreference", "initView : contact = " + this.cQI + " bindView = " + this.fsg);
      return;
    }
    if ((this.ghN != -1L) && (new j(this.ghN).longValue() > 0L))
    {
      setWidgetLayoutResource(2130903529);
      aKK();
      return;
    }
    if (this.gUc != null)
    {
      setWidgetLayoutResource(2130903520);
      aKL();
      return;
    }
    if (this.gUe > 0L)
    {
      aKJ();
      return;
    }
    if (!TextUtils.isEmpty(this.frH))
    {
      if ((this.cQI == null) || (!this.fsg))
      {
        aa.d("MicroMsg.FriendPreference", "initView : contact = " + this.cQI + " bindView = " + this.fsg);
        return;
      }
      this.gUf = 3;
      this.cXK.setText(getContext().getString(2131165464));
      this.ecB.setText(au.hW(this.frH));
      this.eFr.setVisibility(8);
      return;
    }
    Assert.assertTrue(false);
  }

  private void aKJ()
  {
    if ((this.cQI == null) || (!this.fsg))
      aa.d("MicroMsg.FriendPreference", "initView : contact = " + this.cQI + " bindView = " + this.fsg);
    do
    {
      return;
      this.gUf = 3;
      this.cXK.setText(getContext().getString(2131165224));
      this.ecB.setText(au.hW(this.cQI.rm()));
      Bitmap localBitmap1 = c.dS(this.gUe);
      if (localBitmap1 == null)
        localBitmap1 = com.tencent.mm.platformtools.b.decodeStream(getContext().getResources().openRawResource(2130837956));
      if (localBitmap1 != null)
      {
        Bitmap localBitmap2 = com.tencent.mm.sdk.platformtools.h.a(Bitmap.createScaledBitmap(localBitmap1, 48, 48, false), true, 0.0F);
        this.eFr.setImageBitmap(localBitmap2);
      }
    }
    while (be.uz().isSDCardAvailable());
    this.eFr.setBackgroundDrawable(a.k(this.bLH, 2130838793));
  }

  private void aKK()
  {
    if ((this.cQI == null) || (!this.fsg))
      aa.d("MicroMsg.FriendPreference", "initView : contact = " + this.cQI + " bindView = " + this.fsg);
    do
    {
      return;
      this.gUf = 2;
      this.cXK.setText(getContext().getString(2131166287));
      String str1 = au.hW(this.gUd);
      String str2 = str1 + " " + new j(this.ghN).longValue();
      this.ecB.setText(str2);
      Bitmap localBitmap1 = c.t(this.ghN);
      if (localBitmap1 == null)
        localBitmap1 = com.tencent.mm.platformtools.b.decodeStream(getContext().getResources().openRawResource(2130837956));
      if (localBitmap1 != null)
      {
        Bitmap localBitmap2 = com.tencent.mm.sdk.platformtools.h.a(Bitmap.createScaledBitmap(localBitmap1, 48, 48, false), true, 0.0F);
        this.eFr.setImageBitmap(localBitmap2);
      }
    }
    while (be.uz().isSDCardAvailable());
    this.eFr.setBackgroundDrawable(a.k(this.bLH, 2130838793));
  }

  private void aKL()
  {
    if ((this.cQI == null) || (!this.fsg))
      aa.d("MicroMsg.FriendPreference", "initView : contact = " + this.cQI + " bindView = " + this.fsg);
    while (this.gUc == null)
      return;
    this.gUf = 1;
    this.cXK.setText(getContext().getString(2131166288));
    String str = au.hW(this.gUc.yM()) + " " + au.hW(this.gUc.yS()).replace(" ", "");
    this.ecB.setText(str);
    Bitmap localBitmap1 = z.c(this.gUc.yL(), getContext());
    if (localBitmap1 == null)
      this.eFr.setImageDrawable(a.k(this.bLH, 2130837955));
    while (be.uz().su().tK(this.gUc.getUsername()))
    {
      this.gUb.setOnClickListener(new ck(this, str));
      return;
      Bitmap localBitmap2 = com.tencent.mm.sdk.platformtools.h.a(Bitmap.createScaledBitmap(localBitmap1, 48, 48, false), true, 0.0F);
      this.eFr.setImageBitmap(localBitmap2);
    }
    this.gUb.setVisibility(4);
  }

  private void init()
  {
    this.fsg = false;
    this.cQI = null;
    this.gUc = null;
    this.gUd = "";
    this.ghN = 0L;
    this.gUe = 0L;
    this.gUf = 0;
    this.frH = "";
  }

  private boolean q(String paramString, Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
      return z.a(paramString, getContext(), localByteArrayOutputStream.toByteArray());
    }
    return false;
  }

  public final boolean Ji()
  {
    af.vJ().e(this);
    return true;
  }

  public final boolean a(com.tencent.mm.storage.i parami, String paramString1, String paramString2, long paramLong, String paramString3)
  {
    boolean bool1;
    if (parami != null)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (au.hW(parami.getUsername()).length() <= 0)
        break label106;
    }
    label106: for (boolean bool2 = true; ; bool2 = false)
    {
      Assert.assertTrue(bool2);
      af.vJ().d(this);
      this.cQI = parami;
      this.ghN = paramLong;
      this.gUd = paramString3;
      this.gUe = 0L;
      if ((paramLong == -1L) || (new j(paramLong).longValue() <= 0L))
        break label112;
      setWidgetLayoutResource(2130903529);
      aKK();
      return true;
      bool1 = false;
      break;
    }
    label112: setWidgetLayoutResource(2130903528);
    if (((paramString1 != null) && (paramString1.length() > 0)) || ((paramString2 != null) && (paramString2.length() > 0)))
    {
      this.gUc = ax.Al().fs(paramString1);
      if ((this.gUc == null) || (this.gUc.yK() == null) || (this.gUc.yK().length() <= 0))
      {
        this.gUc = ax.Al().fs(paramString2);
        if ((this.gUc == null) || (this.gUc.yK() == null) || (this.gUc.yK().length() <= 0))
        {
          aa.e("MicroMsg.FriendPreference", "error : this is not the mobile contact, MD5 = " + paramString1);
          Ji();
          return false;
        }
      }
      if ((this.gUc.getUsername() == null) || (this.gUc.getUsername().length() <= 0))
      {
        this.gUc.setUsername(parami.getUsername());
        this.gUc.cL(128);
        if (ax.Al().a(this.gUc.yK(), this.gUc) == -1)
        {
          aa.e("MicroMsg.FriendPreference", "update mobile contact username failed");
          Ji();
          return false;
        }
      }
      setWidgetLayoutResource(2130903520);
      aKL();
      return true;
    }
    if (0L > 0L)
    {
      aKJ();
      return true;
    }
    Ji();
    return false;
  }

  public final int aKH()
  {
    return this.gUf;
  }

  public final String aKI()
  {
    return this.ecB.getText().toString();
  }

  public final void ei(String paramString)
  {
    long l = c.dU(paramString);
    if ((l > 0L) && (this.ghN == l) && (c.a(paramString, false, -1) != null))
      FR();
    if ((c.dT(paramString) == this.gUe) && (c.a(paramString, false, -1) != null))
      FR();
  }

  public final void onBindView(View paramView)
  {
    this.cXK = ((TextView)paramView.findViewById(2131361861));
    this.ecB = ((TextView)paramView.findViewById(2131362266));
    this.eFr = ((ImageView)paramView.findViewById(2131362591));
    this.gUb = ((ImageView)paramView.findViewById(2131363245));
    this.fsg = true;
    FR();
    super.onBindView(paramView);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    localLayoutInflater.inflate(2130903488, localViewGroup);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.FriendPreference
 * JD-Core Version:    0.6.2
 */