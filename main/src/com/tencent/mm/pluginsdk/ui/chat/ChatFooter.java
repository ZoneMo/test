package com.tencent.mm.pluginsdk.ui.chat;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnDragListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.f;
import com.tencent.mm.g;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ui.ChatFooterPanel;
import com.tencent.mm.pluginsdk.ui.aw;
import com.tencent.mm.pluginsdk.ui.simley.VPSmileyPanel;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.widget.MMEditText;

public class ChatFooter extends LinearLayout
{
  private static final int[] cSv;
  private static final int[] cSw = arrayOfInt;
  private static int count = 0;
  private ImageView cSD;
  private boolean cSL = false;
  private final Handler cST = new v(this);
  private View dli;
  private View dlj;
  private View dlk;
  private View dll;
  private MMEditText eDV = null;
  private Button eDW = null;
  private ChatFooterPanel eDX;
  private ce eML;
  private TextView eMM;
  private ImageView eMN;
  private View eMO;
  private int fkk;
  private View fng = null;
  private bj fpQ;
  private AppPanel fpR;
  private TextView fpS = null;
  private Button fpT;
  private ImageButton fpU;
  private LinearLayout fpV;
  private FrameLayout fpW;
  private ImageButton fpX;
  private ImageButton fpY;
  private com.tencent.mm.ui.base.x fpZ;
  private volatile boolean fqA = false;
  private boolean fqB = false;
  private final int fqC = 4097;
  private final int fqD = 4098;
  private volatile boolean fqE;
  private Handler fqF = new ad(this);
  private au fqa;
  private bd fqb;
  private an fqc;
  private am fqd = null;
  private final al fqe = new al((byte)0);
  private boolean fqf = false;
  private InputMethodManager fqg;
  private int fqh;
  private boolean fqi = false;
  private boolean fqj = false;
  private bi fqk = new n(this);
  private boolean fql = false;
  private com.tencent.mm.pluginsdk.model.app.bj fqm = new ak(this);
  private com.tencent.mm.pluginsdk.ui.h fqn = new s(this);
  private m fqo = new t(this);
  private int fqp = 0;
  private final int fqq = 0;
  private final int fqr = 1;
  private final int fqs = 2;
  private final int fqt = 20;
  private final int fqu = 21;
  private final int fqv = 22;
  private int fqw = -1;
  private int fqx = -1;
  private boolean fqy = false;
  private int fqz = 0;
  private final Handler mHandler = new x(this);

  static
  {
    cSv = new int[] { 0, 15, 30, 45, 60, 75, 90, 100 };
    int[] arrayOfInt = new int[7];
    arrayOfInt[0] = com.tencent.mm.h.abL;
    arrayOfInt[1] = com.tencent.mm.h.abM;
    arrayOfInt[2] = com.tencent.mm.h.abN;
    arrayOfInt[3] = com.tencent.mm.h.abO;
    arrayOfInt[4] = com.tencent.mm.h.abP;
    arrayOfInt[5] = com.tencent.mm.h.abQ;
    arrayOfInt[6] = com.tencent.mm.h.abR;
  }

  public ChatFooter(Context paramContext)
  {
    this(paramContext, null);
  }

  public ChatFooter(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ChatFooter(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    long l = System.currentTimeMillis();
    this.fqg = ((InputMethodManager)paramContext.getSystemService("input_method"));
    this.fng = inflate(paramContext, k.aSY, this);
    this.fpV = ((LinearLayout)this.fng.findViewById(com.tencent.mm.i.aML));
    this.eDV = ((MMEditText)this.fng.findViewById(com.tencent.mm.i.aph));
    this.fpW = ((FrameLayout)findViewById(com.tencent.mm.i.apg));
    this.fpX = ((ImageButton)this.fng.findViewById(com.tencent.mm.i.ape));
    this.eDW = ((Button)this.fng.findViewById(com.tencent.mm.i.apl));
    cA(false);
    this.fql = ((Boolean)be.uz().sr().get(66832, Boolean.valueOf(false))).booleanValue();
    this.fqa = new au(getContext(), getRootView(), this);
    this.fqb = new bd(getContext(), getRootView(), this, this.eDV);
    this.fqb.a(this.fqk);
    this.fpT = ((Button)this.fng.findViewById(com.tencent.mm.i.aPd));
    this.fpU = ((ImageButton)findViewById(com.tencent.mm.i.apj));
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.eDV.getImeOptions());
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChatFooter", "send edittext ime option %s", arrayOfObject1);
    this.eDV.setOnEditorActionListener(new af(this));
    this.eDV.setOnTouchListener(new ag(this));
    this.eDV.setOnLongClickListener(new ah(this));
    this.eDW.setOnClickListener(new ai(this));
    this.fpT.setOnTouchListener(new q(this));
    this.fpT.setOnKeyListener(new r(this));
    this.fpU.setOnClickListener(new p(this));
    if (ap.ata() == null)
      this.eDX = new ao(getContext());
    do
    {
      this.fpR = ((AppPanel)findViewById(com.tencent.mm.i.apd));
      this.fpR.a(this.fqo);
      this.fpR.kx(com.tencent.mm.pluginsdk.ui.tools.r.bc(getContext()));
      this.fpX.setVisibility(0);
      this.fpX.setOnClickListener(new aj(this));
      kD(com.tencent.mm.pluginsdk.ui.tools.r.bc(getContext()));
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(System.currentTimeMillis() - l);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ChatFooter", "init time: %d", arrayOfObject2);
      return;
      this.eDX = ap.ata().aW(getContext());
    }
    while (this.eDX == null);
    this.eDX.setVisibility(8);
    this.eDX.kf(this.fkk);
    if (this.fpW != null)
      this.fpW.addView(this.eDX, -1, -2);
    this.eDX.a(this.fqn);
    ChatFooterPanel localChatFooterPanel = this.eDX;
    if (this.eDV.getText().length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      localChatFooterPanel.ch(bool);
      ((VPSmileyPanel)this.eDX).kR(com.tencent.mm.pluginsdk.ui.tools.r.bc(getContext()));
      break;
    }
  }

  private void SM()
  {
    cj.af(this);
    this.fqA = false;
  }

  public static void asN()
  {
  }

  private void asV()
  {
    this.fpW.setVisibility(8);
  }

  private void b(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = 1;
    if (paramBoolean)
      switch (paramInt1)
      {
      default:
        paramBoolean = false;
        if (((paramBoolean) && (paramInt2 != 21) && (this.fpY != null)) || ((this.fpY != null) && (!paramBoolean) && ((paramInt2 == 21) || (paramInt2 == 20))))
          cE(false);
        if ((paramInt1 == 0) && (!paramBoolean))
        {
          cA(false);
          cE(false);
        }
        break;
      case 1:
      case 2:
      }
    while ((!paramBoolean) || (paramInt2 == 22))
    {
      return;
      cB(i);
      this.fqg.showSoftInput(this.eDV, 0);
      break;
      if (paramInt2 == 22)
      {
        this.fpR.asr();
        this.eDX.setVisibility(8);
        this.fpR.setVisibility(0);
        this.fqa.atc();
        cB(false);
        if (this.fqh == 2)
          kC(i);
      }
      while (true)
      {
        SM();
        this.fpW.setVisibility(0);
        break;
        if (paramInt2 == 21)
        {
          this.fpR.setVisibility(8);
          this.eDX.setVisibility(0);
          cE(i);
          cB(i);
        }
      }
      switch (paramInt1)
      {
      default:
        break;
      case 0:
        SM();
        asV();
        break;
      case 1:
        SM();
        break;
      case 2:
        if (paramInt2 == 20)
        {
          asV();
          break;
        }
        if (paramInt2 == 22)
        {
          this.fpR.setVisibility(8);
          break;
        }
        if (paramInt2 != 21)
          break;
        this.eDX.setVisibility(8);
        break;
      }
    }
    if (this.eDV.length() > 0);
    while (true)
    {
      cA(i);
      return;
      int j = 0;
    }
  }

  private void cA(boolean paramBoolean)
  {
    if ((this.fql) || (this.eDW == null) || (this.fpX == null));
    while (((this.eDW.getVisibility() == 0) && (paramBoolean)) || ((this.fpX.getVisibility() == 0) && (!paramBoolean)))
      return;
    if (paramBoolean)
    {
      this.eDW.setVisibility(0);
      this.fpX.setVisibility(8);
    }
    while (true)
    {
      this.eDW.getParent().requestLayout();
      return;
      this.fpX.setVisibility(0);
      this.eDW.setVisibility(8);
    }
  }

  private void cB(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.eDV.requestFocus();
      this.fng.findViewById(com.tencent.mm.i.aML).setEnabled(true);
      return;
    }
    this.eDV.clearFocus();
    this.fng.findViewById(com.tencent.mm.i.aML).setEnabled(false);
  }

  private void cE(boolean paramBoolean)
  {
    if (this.fpY == null);
    while (((this.fqB) && (paramBoolean)) || ((!this.fqB) && (!paramBoolean)))
      return;
    this.fqB = paramBoolean;
    if (paramBoolean)
    {
      this.fpY.setImageDrawable(getContext().getResources().getDrawable(com.tencent.mm.h.adk));
      return;
    }
    this.fpY.setImageDrawable(getContext().getResources().getDrawable(com.tencent.mm.h.adm));
  }

  private void kC(int paramInt)
  {
    this.fqh = paramInt;
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.fpV.setVisibility(0);
      this.fpT.setVisibility(8);
      ky(com.tencent.mm.h.adq);
      return;
    case 2:
    }
    this.fpV.setVisibility(8);
    this.fpT.setVisibility(0);
    ky(com.tencent.mm.h.adp);
  }

  private void kD(int paramInt)
  {
    if ((paramInt > 0) && (this.fpW != null))
    {
      Object localObject = new LinearLayout.LayoutParams(-1, paramInt);
      if (this.fpW.getLayoutParams() != null)
        localObject = this.fpW.getLayoutParams();
      ((ViewGroup.LayoutParams)localObject).height = paramInt;
      this.fpW.setLayoutParams((ViewGroup.LayoutParams)localObject);
    }
  }

  private void ky(int paramInt)
  {
    if (this.fpU == null)
      return;
    this.fpU.setImageResource(paramInt);
    this.fpU.setPadding(0, 0, 0, getResources().getDimensionPixelSize(g.aaL));
  }

  public final void Oe()
  {
    if (this.eML != null)
    {
      this.eML.dismiss();
      this.dli.setVisibility(0);
      this.eMO.setVisibility(8);
      this.dlj.setVisibility(8);
      this.dll.setVisibility(8);
      this.dlk.setVisibility(0);
    }
    this.fpT.setBackgroundDrawable(com.tencent.mm.an.a.k(getContext(), com.tencent.mm.h.ajN));
    this.fpT.setText(com.tencent.mm.n.bgz);
    this.fqi = false;
    this.cSL = false;
  }

  public final void UY()
  {
    this.fqA = true;
    b(1, -1, true);
  }

  @TargetApi(11)
  public final void a(View.OnDragListener paramOnDragListener)
  {
    this.eDV.setOnDragListener(paramOnDragListener);
  }

  public final void a(am paramam)
  {
    this.fqd = paramam;
    View localView = findViewById(com.tencent.mm.i.apk);
    localView.setVisibility(0);
    localView.setOnClickListener(new y(this));
  }

  public final void a(an paraman)
  {
    this.fqc = paraman;
  }

  public final void a(l paraml)
  {
    this.fpR.a(paraml);
  }

  public final void addTextChangedListener(TextWatcher paramTextWatcher)
  {
    this.eDV.addTextChangedListener(new w(this, paramTextWatcher));
  }

  public final void aqY()
  {
    this.fpR.aqY();
    this.eDX.aqY();
  }

  public final void asA()
  {
    this.fpV.setVisibility(0);
    this.fpU.setVisibility(8);
    this.fpT.setVisibility(8);
  }

  public final void asB()
  {
    this.fpR.ask();
  }

  public final void asC()
  {
    this.fpR.asm();
  }

  public final void asD()
  {
    this.fpR.asj();
  }

  public final void asE()
  {
    this.fpR.asn();
  }

  public final void asF()
  {
    this.fpY = ((ImageButton)this.fng.findViewById(com.tencent.mm.i.apn));
    this.fpY.setVisibility(0);
    this.fpY.setOnClickListener(new o(this));
    if (this.fqb != null)
      this.fqb.ab(this.fpY);
  }

  public final void asG()
  {
    this.fpX.setVisibility(8);
  }

  public final void asH()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChatFooter", "chatting footer enable ener button send");
    this.fqj = true;
    this.eDV.setImeOptions(4);
    this.eDV.setInputType(0xFFFFFFBF & this.eDV.getInputType());
  }

  public final void asI()
  {
    this.eDX.ara();
  }

  public final void asJ()
  {
    this.fpR.ara();
  }

  public final void asK()
  {
    asR();
  }

  public final boolean asL()
  {
    return this.fpW.getVisibility() == 0;
  }

  public final void asM()
  {
    this.fpS = ((TextView)this.fng.findViewById(com.tencent.mm.i.apq));
    MMEditText localMMEditText = this.eDV;
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(140);
    localMMEditText.setFilters(arrayOfInputFilter);
  }

  public final void asO()
  {
    UY();
  }

  public final void asP()
  {
    SM();
    cB(false);
  }

  public final void asQ()
  {
    b(0, -1, false);
  }

  public final void asR()
  {
    b(2, 20, false);
  }

  public final void asS()
  {
    b(2, 22, true);
  }

  public final int asT()
  {
    return com.tencent.mm.pluginsdk.ui.tools.r.bc(getContext());
  }

  public final void asU()
  {
    if (this.eDV != null)
      this.eDV.setText("");
  }

  public final void ash()
  {
    this.fpR.ash();
  }

  public final void asi()
  {
    this.fpR.asi();
  }

  public final void asl()
  {
    this.fpR.asl();
  }

  public final boolean ast()
  {
    return this.fqf;
  }

  public final String asu()
  {
    return this.fqe.fqO;
  }

  public final String asv()
  {
    return this.fqe.fqN;
  }

  public final int asw()
  {
    return this.fqe.fqP;
  }

  public final void asx()
  {
    this.fpT.setEnabled(false);
    this.fpT.setBackgroundDrawable(com.tencent.mm.an.a.k(getContext(), com.tencent.mm.h.ajM));
    if (this.eML != null)
    {
      this.dlj.setVisibility(0);
      this.dli.setVisibility(8);
      this.eMO.setVisibility(8);
      this.eML.update();
    }
    this.cST.sendEmptyMessageDelayed(0, 500L);
  }

  public final String asy()
  {
    if (this.eDV == null)
      return "";
    return this.eDV.getText().toString();
  }

  public final void asz()
  {
    this.eMO.setVisibility(8);
    this.dli.setVisibility(0);
  }

  public final void b(aw paramaw)
  {
    this.fqb.c(paramaw);
  }

  public final void b(ar paramar)
  {
    this.eDX.a(paramar);
  }

  public final void b(String paramString, int paramInt, boolean paramBoolean)
  {
    if ((paramBoolean) && ((paramString == null) || (paramString.length() == 0) || (this.eDV == null)))
      return;
    this.fqf = true;
    MMEditText localMMEditText = this.eDV;
    localMMEditText.setText(com.tencent.mm.ao.b.b(getContext(), paramString, (int)this.eDV.getTextSize(), false));
    this.fqf = false;
    if ((paramInt < 0) || (paramInt > this.eDV.getText().length()))
    {
      this.eDV.setSelection(this.eDV.getText().length());
      return;
    }
    this.eDV.setSelection(paramInt);
  }

  public final void cC(boolean paramBoolean)
  {
    this.fpR.cz(paramBoolean);
  }

  @TargetApi(11)
  public final void cD(boolean paramBoolean)
  {
    if (com.tencent.mm.compatible.g.i.bG(11))
    {
      com.tencent.mm.compatible.a.a.a(11, new z(this, paramBoolean));
      return;
    }
    if (paramBoolean)
    {
      this.eDV.setTextColor(getResources().getColor(f.aab));
      return;
    }
    this.eDV.setTextColor(getResources().getColor(f.ZV));
    cB(false);
  }

  public final void ci(boolean paramBoolean)
  {
    this.eDX.ci(paramBoolean);
  }

  public final void cy(boolean paramBoolean)
  {
    this.fpR.cy(paramBoolean);
  }

  public final void destroy()
  {
    this.eDX.aqZ();
    this.eDX.destroy();
    if (this.fqc != null)
      this.fqc.release();
    if (this.fqb != null)
    {
      this.fqb.a(null);
      this.fqb.c(null);
    }
  }

  public final int getMode()
  {
    return this.fqh;
  }

  public final void kA(int paramInt)
  {
    this.fqp = 0;
    int i = com.tencent.mm.an.a.fromDPToPix(getContext(), 180);
    int j = com.tencent.mm.sdk.platformtools.e.a(getContext(), 50.0F);
    if (paramInt + j < i);
    for (this.fqp = -1; ; this.fqp = (j + (paramInt - i) / 2))
    {
      if (this.eML == null)
      {
        this.eML = new ce(View.inflate(getContext(), k.bbl, null), -1, -2);
        this.cSD = ((ImageView)this.eML.getContentView().findViewById(com.tencent.mm.i.aOT));
        this.dlk = this.eML.getContentView().findViewById(com.tencent.mm.i.aOU);
        this.dll = this.eML.getContentView().findViewById(com.tencent.mm.i.aOW);
        this.eMM = ((TextView)this.eML.getContentView().findViewById(com.tencent.mm.i.aOY));
        this.eMN = ((ImageView)this.eML.getContentView().findViewById(com.tencent.mm.i.aOX));
        this.eMO = this.eML.getContentView().findViewById(com.tencent.mm.i.aOZ);
        this.dli = this.eML.getContentView().findViewById(com.tencent.mm.i.aPa);
        this.dlj = this.eML.getContentView().findViewById(com.tencent.mm.i.aPb);
      }
      if (this.fqp != -1)
      {
        this.dlj.setVisibility(8);
        this.dli.setVisibility(8);
        this.eMO.setVisibility(0);
        this.eML.showAtLocation(this, 49, 0, this.fqp);
      }
      return;
    }
  }

  public final void kB(int paramInt)
  {
    for (int i = 0; ; i++)
      if (i < cSw.length)
      {
        if ((paramInt >= cSv[i]) && (paramInt < cSv[(i + 1)]))
          this.cSD.setBackgroundDrawable(com.tencent.mm.an.a.k(getContext(), cSw[i]));
      }
      else
      {
        if ((paramInt == -1) && (this.eML != null))
        {
          this.eML.dismiss();
          this.eMO.setVisibility(0);
          this.dli.setVisibility(8);
          this.dlj.setVisibility(8);
        }
        return;
      }
  }

  public final void kz(int paramInt)
  {
    this.fqe.fqP = paramInt;
  }

  public final void o(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.fpR.cw(paramBoolean1);
    this.fpR.cx(paramBoolean2);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((!paramBoolean) || (this.fqE))
      return;
    if ((this.fqw > 0) && (this.fqw != paramInt4) && (!this.fqy))
    {
      this.fqz += Math.abs(paramInt4 - this.fqw);
      int i = com.tencent.mm.an.a.n(getContext(), this.fqz);
      if (!com.tencent.mm.pluginsdk.ui.tools.r.kT(i))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(i);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChatFooter", "calc #wrong# keyBord dialog height:%d", arrayOfObject2);
      }
    }
    else
    {
      label112: if ((this.fqw <= 0) || (this.fqw >= paramInt4))
        break label310;
      if (!asL())
        postDelayed(new ae(this), 10L);
    }
    while (true)
    {
      if ((this.fqx > 0) && (this.fqx < paramInt2));
      this.fqx = paramInt2;
      this.fqw = paramInt4;
      if (this.fqb == null)
        break;
      this.fqb.update();
      return;
      int j = this.fqz;
      com.tencent.mm.pluginsdk.ui.tools.r.h(getContext(), j);
      if (this.fpR != null)
        this.fpR.kx(this.fqz);
      if (this.fpQ != null)
        this.fpQ.kF(this.fqz);
      postDelayed(new ac(this, this.fqz), 10L);
      this.fqy = true;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(this.fqz);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ChatFooter", "jacks calc keyBord dialog height:%d", arrayOfObject1);
      this.fqz = 0;
      break label112;
      label310: if ((this.fqw > 0) && (this.fqw != paramInt4))
        postDelayed(new aa(this), 10L);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
  }

  public final void onPause()
  {
    this.eDX.onPause();
    if (this.fpQ != null)
      this.fpQ.reset();
    this.fqc.onPause();
  }

  public final void onResume()
  {
    this.eDX.onResume();
    if ((!this.fql) && (this.fqj))
    {
      this.fqj = false;
      this.eDV.setImeOptions(0);
      this.eDV.setInputType(0x40 | this.eDV.getInputType());
    }
    while (true)
    {
      this.fqa.atd();
      this.fng.findViewById(com.tencent.mm.i.apm).setVisibility(0);
      asF();
      this.fqc.onResume();
      return;
      if ((this.fql) && (!this.fqj))
        asH();
    }
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void qI(String paramString)
  {
    this.fqe.fqO = paramString;
  }

  public final void qJ(String paramString)
  {
    this.fqe.fqN = paramString;
  }

  public final void qK(String paramString)
  {
    b(paramString, -1, true);
  }

  public final void qL(String paramString)
  {
    b(paramString, -1, false);
  }

  public final void qM(String paramString)
  {
    if ((this.fqb != null) && (this.eDW != null) && (this.fqA))
      this.fqb.qP(paramString);
  }

  public final void setMode(int paramInt)
  {
    kC(paramInt);
    switch (paramInt)
    {
    default:
      setVisibility(0);
      return;
    case 1:
      cB(true);
      asV();
      UY();
      return;
    case 2:
    }
    b(0, -1, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.ChatFooter
 * JD-Core Version:    0.6.2
 */