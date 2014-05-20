package com.tencent.mm.ui.conversation;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.z;

public class NetWarnView extends LinearLayout
{
  private ProgressDialog cIr = null;
  private Context context;
  private boolean cuA = false;
  private ImageView daU;
  private TextView daV;
  private TextView dkR;
  private TextView gZT;
  private ImageView gZU;
  private ImageView gZV;
  private ProgressBar gZW;
  private String gZX;
  private boolean gZY = false;
  private boolean gZZ = false;
  private ImageView gZv;
  private TextView gsX;
  private int padding;

  public NetWarnView(Context paramContext)
  {
    super(paramContext);
  }

  public NetWarnView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void aLI()
  {
    if (!this.gZY)
    {
      this.daV = ((TextView)findViewById(2131363321));
      this.dkR = ((TextView)findViewById(2131363322));
      this.gsX = ((TextView)findViewById(2131363323));
      this.gZT = ((TextView)findViewById(2131363325));
      this.gZW = ((ProgressBar)findViewById(2131363324));
      this.daU = ((ImageView)findViewById(2131363320));
      this.gZv = ((ImageView)findViewById(2131363328));
      this.gZU = ((ImageView)findViewById(2131363327));
      this.gZV = ((ImageView)findViewById(2131363326));
      this.gZv.setVisibility(8);
      this.gZY = true;
      this.padding = getResources().getDimensionPixelSize(2131558431);
    }
  }

  public final void arP()
  {
    setBackgroundResource(0);
    this.daU.setImageResource(0);
    this.gZU.setImageResource(0);
    this.gZV.setImageResource(0);
    this.gZv.setImageDrawable(null);
  }

  public final boolean bZ(Context paramContext)
  {
    this.context = paramContext;
    int i = be.uA().wS();
    String str = be.uA().getNetworkServerIp();
    Object[] arrayOfObject1 = new Object[5];
    arrayOfObject1[0] = ("0x" + Integer.toHexString(com.tencent.mm.protocal.a.fxr));
    arrayOfObject1[1] = com.tencent.mm.protocal.a.fxk;
    arrayOfObject1[2] = v.th();
    arrayOfObject1[3] = str;
    arrayOfObject1[4] = z.azj();
    this.gZX = String.format("http://w.mail.qq.com/cgi-bin/report_mm?failuretype=1&devicetype=2&clientversion=%s&os=%s&username=%s&iport=%s&t=weixin_bulletin&f=xhtml&lang=%s", arrayOfObject1);
    aLI();
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(i);
    aa.d("MicroMsg.NetWarnView", "update st:%d", arrayOfObject2);
    boolean bool;
    label228: label380: int k;
    switch (i)
    {
    case 1:
    case 2:
    case 5:
    default:
      bool = false;
      if (bool)
      {
        this.gsX.setVisibility(8);
        this.daV.setVisibility(0);
        setBackgroundResource(2130839554);
        setPadding(this.padding, 0, this.padding, 0);
        this.daU.setImageResource(2130838931);
        this.gZU.setVisibility(8);
        this.gZV.setVisibility(8);
        if (!bool)
        {
          this.gZv.setVisibility(8);
          if (at.cHg)
          {
            int m = ba.bv(this.context);
            if ((!ba.lK(m)) || (this.gZZ))
              break label884;
            this.daV.setText(this.context.getString(2131167102));
            this.dkR.setText(this.context.getString(2131167101));
            this.dkR.setVisibility(0);
            this.gZT.setVisibility(8);
            this.gZW.setVisibility(8);
            this.daU.setVisibility(0);
            this.gZv.setVisibility(0);
            setOnClickListener(new ce(this, m));
            this.gZv.setOnClickListener(new cf(this, m));
            bool = true;
          }
        }
        this.gZV.setImageResource(2130837802);
        this.gZv.setImageResource(2130837713);
        k = 0;
        if (!bool)
          break label896;
      }
      break;
    case 0:
    case 4:
    case 3:
    case 6:
    }
    while (true)
    {
      setVisibility(k);
      return bool;
      this.daV.setText(2131165644);
      this.dkR.setVisibility(8);
      this.gZT.setVisibility(8);
      this.gZW.setVisibility(8);
      this.daU.setVisibility(0);
      setOnClickListener(new ca(this, paramContext));
      bool = true;
      break;
      this.daV.setText(2131165643);
      this.dkR.setVisibility(8);
      this.gZT.setVisibility(8);
      this.gZW.setVisibility(0);
      this.daU.setVisibility(0);
      bool = true;
      break;
      this.daV.setText(2131165647);
      this.dkR.setVisibility(8);
      this.gZT.setVisibility(8);
      this.gZW.setVisibility(8);
      this.daU.setVisibility(0);
      setOnClickListener(new cb(this, paramContext));
      bool = true;
      break;
      this.daV.setText(2131165648);
      this.dkR.setText(getContext().getString(2131165649));
      this.dkR.setVisibility(0);
      this.gZT.setVisibility(8);
      this.gZW.setVisibility(8);
      this.daU.setVisibility(0);
      setOnClickListener(new cc(this, paramContext));
      bool = true;
      break;
      if ((be.uz().sk()) && (com.tencent.mm.plugin.webwx.a.a.jU(be.uz().sl())))
      {
        be.uA().d(new com.tencent.mm.plugin.webwx.a.a(be.uz().sl()));
        break label228;
      }
      if ((!be.uz().sk()) || (au.hX(com.tencent.mm.plugin.webwx.a.a.feT)))
        break label228;
      setBackgroundResource(2130839555);
      setPadding(this.padding, 0, this.padding, 0);
      this.daV.setVisibility(8);
      this.dkR.setVisibility(8);
      this.gsX.setVisibility(0);
      this.gsX.setText(com.tencent.mm.plugin.webwx.a.a.feT);
      this.gZT.setVisibility(8);
      this.gZW.setVisibility(8);
      this.daU.setImageResource(2130838933);
      this.daU.setVisibility(0);
      this.gZU.setVisibility(8);
      ImageView localImageView = this.gZV;
      if (v.tn());
      for (int j = 8; ; j = 0)
      {
        localImageView.setVisibility(j);
        setOnClickListener(new cd(this, paramContext));
        bool = true;
        break;
      }
      label884: this.gZv.setVisibility(8);
      break label380;
      label896: k = 8;
    }
  }

  public void onFinishInflate()
  {
    super.onFinishInflate();
    aLI();
  }

  public final void release()
  {
    this.context = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.NetWarnView
 * JD-Core Version:    0.6.2
 */