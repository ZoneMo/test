package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.a.j;
import com.tencent.mm.an.a;
import com.tencent.mm.ao.b;
import com.tencent.mm.m.c;
import com.tencent.mm.m.p;
import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.preference.Preference;

public class VerifyUserHeaderPreference extends Preference
  implements p, m, ar
{
  private ImageView cID;
  private com.tencent.mm.storage.i cQI;
  private int cae;
  private Context context;
  private TextView dMP;
  private TextView eEC;
  private int edN;
  private boolean fsg = false;
  private ImageView gXA;
  private TextView gXB;
  private TextView gXC;
  private TextView gXD;
  private TextView gXE;
  private TextView gXF;
  private String gXG = "";
  private String gXH;
  private String gXI;
  private TextView gXy;
  private TextView gXz;
  private long ghN;

  public VerifyUserHeaderPreference(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
  }

  public VerifyUserHeaderPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
  }

  public VerifyUserHeaderPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
  }

  private static String wZ(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
    {
      aa.e("MicroMsg.VertifyUserHeaderPreference", "getLocalMobileRemark : phoneMD5 null");
      return "";
    }
    h localh = ax.Al().fs(paramString);
    if ((localh == null) || (localh.yM() == null))
    {
      aa.e("MicroMsg.VertifyUserHeaderPreference", "getLocalMobileRemark : not in phone addr");
      return "";
    }
    return localh.yM();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
  }

  public final void ei(String paramString)
  {
  }

  public final void onBindView(View paramView)
  {
    aa.d("MicroMsg.VertifyUserHeaderPreference", "onBindView");
    this.gXy = ((TextView)paramView.findViewById(2131362416));
    this.gXz = ((TextView)paramView.findViewById(2131362417));
    this.cID = ((ImageView)paramView.findViewById(2131362418));
    this.eEC = ((TextView)paramView.findViewById(2131362419));
    this.gXA = ((ImageView)paramView.findViewById(2131362403));
    this.gXB = ((TextView)paramView.findViewById(2131362423));
    this.gXC = ((TextView)paramView.findViewById(2131362424));
    this.dMP = ((TextView)paramView.findViewById(2131362425));
    this.gXD = ((TextView)paramView.findViewById(2131362420));
    this.gXE = ((TextView)paramView.findViewById(2131362421));
    this.gXF = ((TextView)paramView.findViewById(2131362422));
    this.fsg = true;
    int i;
    if ((this.fsg) && (this.cQI != null))
    {
      i = 1;
      if (i != 0)
        break label222;
      aa.w("MicroMsg.VertifyUserHeaderPreference", "initView : bindView = " + this.fsg + "contact = " + this.cQI);
    }
    while (true)
    {
      super.onBindView(paramView);
      return;
      i = 0;
      break;
      label222: if (this.cae == 37)
      {
        this.gXz.setText(this.cQI.rq() + ": " + this.gXG);
        switch (this.edN)
        {
        case 19:
        case 20:
        case 21:
        default:
          this.gXy.setText(2131165745);
          if ((this.cQI.rC() != null) && (!this.cQI.rC().equals("")) && (this.cQI.rD() != null) && (!this.cQI.rD().equals("")))
          {
            this.gXB.setText(w.dj(this.cQI.rC()) + "  " + this.cQI.rD());
            this.gXB.setVisibility(0);
            this.gXD.setVisibility(0);
            if ((this.cQI.rB() == null) || (this.cQI.rB().trim().equals("")))
              break label1058;
            TextView localTextView3 = this.dMP;
            localTextView3.setText(b.e(this.context, this.cQI.rB(), -2));
            this.dMP.setVisibility(0);
            this.gXF.setVisibility(0);
            if (w.p(this.cQI))
            {
              if ((this.cQI.rG() == null) || (this.cQI.rG().equals("")))
                break label1079;
              TextView localTextView2 = this.gXC;
              StringBuilder localStringBuilder2 = new StringBuilder().append(au.R(this.cQI.rI(), ""));
              Context localContext = this.context;
              Object[] arrayOfObject = new Object[1];
              arrayOfObject[0] = w.di(this.cQI.rG());
              localTextView2.setText(localContext.getString(2131165841, arrayOfObject));
              this.gXC.setVisibility(0);
              this.gXE.setVisibility(0);
            }
            if (c.a(this.cQI.getUsername(), false, -1) == null)
              break label1100;
            this.cID.setImageBitmap(c.a(this.cQI.getUsername(), false, -1));
          }
          break;
        case 18:
        case 22:
        case 23:
        case 24:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 25:
        }
      }
      while (true)
      {
        label349: this.eEC.setText(this.cQI.kn());
        label460: this.gXA.setVisibility(0);
        label536: label665: if (this.cQI.rk() != 1)
          break label1113;
        this.gXA.setImageDrawable(a.k(this.context, 2130838636));
        break;
        this.gXy.setText(2131165740);
        break label349;
        this.gXy.setText(2131165741);
        break label349;
        this.gXy.setText(2131168418);
        break label349;
        this.gXy.setText(2131165742);
        break label349;
        if (this.cae != 40)
          break label349;
        switch (this.edN)
        {
        default:
          this.gXy.setText(2131165753);
          this.gXz.setVisibility(8);
          break;
        case 4:
          this.gXy.setText(2131165758);
          String str5 = this.context.getString(2131165755);
          this.gXz.setText(str5 + new j(this.ghN).longValue());
          break;
        case 10:
        case 11:
          String str1 = this.context.getString(2131165756);
          this.gXy.setText(2131165759);
          TextView localTextView1 = this.gXz;
          StringBuilder localStringBuilder1 = new StringBuilder().append(str1);
          String str2 = this.gXH;
          String str3 = this.gXI;
          String str4 = wZ(str2);
          if ((str4 == null) || (str4.equals("")))
            str4 = wZ(str3);
          localTextView1.setText(str4);
          break;
          this.gXB.setVisibility(8);
          this.gXD.setVisibility(8);
          break label460;
          label1058: this.dMP.setVisibility(8);
          this.gXF.setVisibility(8);
          break label536;
          label1079: this.gXC.setVisibility(8);
          this.gXE.setVisibility(8);
          break label665;
          label1100: this.cID.setImageResource(2130837952);
        }
      }
      label1113: if (this.cQI.rk() == 2)
        this.gXA.setImageDrawable(a.k(this.context, 2130838635));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.VerifyUserHeaderPreference
 * JD-Core Version:    0.6.2
 */