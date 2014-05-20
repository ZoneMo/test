package com.tencent.mm.plugin.wallet.ui;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.method.KeyListener;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.p;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.x;
import com.tenpay.android.wechat.TenpaySecureEditText;

public class EditHintView extends RelativeLayout
  implements View.OnFocusChangeListener
{
  private int background = -1;
  private TextView cMs;
  private View.OnFocusChangeListener dHP;
  private ImageView dHS;
  private String dHV = "";
  private String dHW = "";
  private boolean dHX = true;
  private int dHY = -1;
  private int dHZ = 1;
  private int dIa = -1;
  private boolean dIb = false;
  public boolean dIe = true;
  private Runnable dIf = null;
  private boolean dIg = false;
  private l fdK;
  private TenpaySecureEditText fdL;
  private int fdM = -1;
  private int fdN = 1;
  private int fdO = -1;
  private int fdP = -1;
  private String fdQ = null;
  private DatePickerDialog fdR = null;
  private int fdS = 0;
  private int fdT = 0;
  private View.OnClickListener fdU = new j(this);
  private x fdV = null;
  private int gravity = 19;
  private int imeOptions;
  private int inputType = 1;

  public EditHintView(Context paramContext)
  {
    super(paramContext);
    aD(paramContext);
  }

  public EditHintView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public EditHintView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJh, paramInt, 0);
    this.dHV = localTypedArray.getString(5);
    this.dHW = localTypedArray.getString(6);
    this.inputType = localTypedArray.getInteger(3, 1);
    this.dIe = localTypedArray.getBoolean(10, true);
    this.gravity = localTypedArray.getInt(0, 19);
    this.dHX = localTypedArray.getBoolean(2, true);
    this.dHY = localTypedArray.getInteger(11, -1);
    this.dIa = localTypedArray.getInteger(7, 0);
    this.imeOptions = localTypedArray.getInteger(4, 5);
    this.fdO = localTypedArray.getColor(8, com.tencent.mm.f.black);
    this.background = localTypedArray.getResourceId(1, com.tencent.mm.h.ajB);
    this.fdP = localTypedArray.getResourceId(9, com.tencent.mm.h.adT);
    localTypedArray.recycle();
    aD(paramContext);
  }

  private void aD(Context paramContext)
  {
    View localView = LayoutInflater.from(paramContext).inflate(k.aTw, this, true);
    this.fdL = ((TenpaySecureEditText)localView.findViewById(i.awb));
    this.cMs = ((TextView)localView.findViewById(i.aMU));
    this.dHS = ((ImageView)localView.findViewById(i.awM));
    this.fdL.setImeOptions(this.imeOptions);
    switch (this.dIa)
    {
    default:
      this.inputType = 1;
    case 0:
      aoF();
      this.dHS.setOnClickListener(this.fdU);
      this.fdL.addTextChangedListener(new a(this));
      this.fdL.setOnFocusChangeListener(this);
      if (!cj.hX(this.dHV))
        this.fdL.setHint(this.dHV);
      if (!cj.hX(this.dHW))
        this.cMs.setText(this.dHW);
      if (this.inputType == 2)
      {
        this.fdL.setKeyListener(new c(this));
        label236: this.fdL.setGravity(this.gravity);
        super.setEnabled(true);
        super.setClickable(true);
        if (!this.dHX)
        {
          this.fdL.setEnabled(false);
          this.fdL.setTextColor(getResources().getColor(this.fdO));
          this.fdL.setFocusable(false);
          this.fdL.setClickable(false);
          this.fdL.setBackgroundResource(com.tencent.mm.h.ajB);
          setBackgroundResource(com.tencent.mm.h.afm);
        }
        if (this.dIe)
          break label770;
        this.dIb = true;
        this.fdL.setEnabled(false);
        this.fdL.setTextColor(getResources().getColor(com.tencent.mm.f.aaF));
        this.fdL.setFocusable(false);
        this.fdL.setClickable(false);
        this.fdL.setBackgroundResource(com.tencent.mm.h.ajB);
        setBackgroundResource(com.tencent.mm.h.ady);
      }
      break;
    case 1:
    case 7:
    case 2:
    case 9:
    case 5:
    case 4:
    case 3:
    case 6:
    case 8:
    case 10:
    }
    while (true)
    {
      if (this.dHY != -1)
      {
        TenpaySecureEditText localTenpaySecureEditText = this.fdL;
        InputFilter[] arrayOfInputFilter = new InputFilter[1];
        arrayOfInputFilter[0] = new InputFilter.LengthFilter(this.dHY);
        localTenpaySecureEditText.setFilters(arrayOfInputFilter);
      }
      if ((this.cMs != null) && (this.fdM != -1))
      {
        ViewGroup.LayoutParams localLayoutParams = this.cMs.getLayoutParams();
        localLayoutParams.width = this.fdM;
        this.cMs.setLayoutParams(localLayoutParams);
      }
      return;
      this.dHY = 25;
      this.fdL.setIsBankcardFormat(true);
      this.inputType = 2;
      break;
      this.dHY = 6;
      this.cMs.setVisibility(8);
      this.fdL.setIsPasswordFormat(true);
      this.fdL.setImeOptions(6);
      this.inputType = 128;
      break;
      this.dHY = 30;
      this.inputType = 3;
      break;
      this.dHY = 18;
      this.inputType = 4;
      break;
      this.dHY = 4;
      this.inputType = 2;
      break;
      this.dIe = false;
      this.fdL.setIsValidThru(true);
      setOnClickListener(new h(this));
      break;
      this.dHY = 6;
      this.cMs.setVisibility(8);
      this.inputType = 2;
      break;
      this.inputType = 32;
      break;
      if ((this.dIe) || (!this.dHX))
        break;
      break;
      if (this.inputType == 4)
      {
        this.fdL.setKeyListener(new d(this));
        break label236;
      }
      if (this.inputType == 128)
      {
        this.fdL.setTransformationMethod(PasswordTransformationMethod.getInstance());
        this.fdL.setKeyListener(new e(this));
        this.fdL.setRawInputType(18);
        break label236;
      }
      if (this.inputType == 3)
      {
        this.fdL.setKeyListener(new f(this));
        break label236;
      }
      this.fdL.setInputType(this.inputType);
      break label236;
      label770: this.dIb = false;
      this.fdL.setBackgroundResource(this.fdP);
      setBackgroundResource(this.background);
    }
  }

  private void aoF()
  {
    if (this.dIa == 7)
      return;
    if ((this.dIe) && (!cj.hX(getText())))
    {
      this.dHS.setVisibility(0);
      this.dHS.setImageResource(com.tencent.mm.h.aif);
      return;
    }
    switch (this.dIa)
    {
    case 5:
    case 6:
    case 7:
    case 8:
    default:
      this.dHS.setVisibility(8);
      return;
    case 3:
    case 4:
    case 9:
    case 10:
    }
    this.dHS.setVisibility(0);
    this.dHS.setImageResource(com.tencent.mm.h.agS);
  }

  public final boolean U(View paramView)
  {
    if (getVisibility() == 0)
    {
      if (cj.hX(getText()))
      {
        if (paramView != null)
          paramView.setVisibility(4);
        this.cMs.setEnabled(true);
        aa.d("MicroMsg.EditHintView", "View:" + this.dHW + ", editType:" + this.dIa + " checkInputValid : empty ");
        return false;
      }
      if (this.dIb)
      {
        if (paramView != null)
          paramView.setVisibility(4);
        this.cMs.setEnabled(true);
        return true;
      }
      if ((5 != this.dIa) || (this.fdL.getText().length() != 16))
      {
        if (paramView != null)
          paramView.setVisibility(0);
        this.cMs.setEnabled(false);
        aa.d("MicroMsg.EditHintView", "View:" + this.dHW + ", editType:" + this.dIa + " checkInputValid : illegal ");
        return false;
      }
    }
    else if (paramView != null)
    {
      paramView.setVisibility(8);
    }
    return true;
  }

  public final void UP()
  {
    this.fdL.ClearInput();
  }

  public final boolean UR()
  {
    if ((!this.dIe) && (!this.dHX));
    do
    {
      do
      {
        do
        {
          return true;
          switch (this.dIa)
          {
          case 2:
          case 3:
          case 6:
          default:
          case 1:
          case 9:
          case 4:
          case 5:
          case 7:
          case 8:
          }
        }
        while (this.fdL.getInputLength() >= this.dHZ);
        return false;
        return this.fdL.isBankcardNum();
        return this.fdL.isPhoneNum();
      }
      while (this.fdL.getInputLength() > 0);
      return false;
      return this.fdL.isAreaIDCardNum(this.fdN);
    }
    while (this.fdL.getInputLength() == 6);
    return false;
    return cj.hT(this.fdL.getText().toString());
  }

  public final void a(l paraml)
  {
    this.fdK = paraml;
  }

  public final void aoG()
  {
    this.fdL.setFocusable(true);
    this.fdL.requestFocus();
    ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(this.fdL, 0);
  }

  public final void aoH()
  {
    this.fdL.setImeOptions(1073741824);
  }

  public final String get3DesEncrptData()
  {
    return this.fdL.get3DesEncrptData();
  }

  public final String getText()
  {
    switch (this.dIa)
    {
    default:
      return cj.R(this.fdL.getText().toString(), "");
    case 1:
      return this.fdL.getEncryptDataWithHash(false);
    case 4:
      return this.fdL.get3DesEncrptData();
    case 5:
      return this.fdL.get3DesEncrptData();
    case 3:
      return cj.R(this.fdQ, "").replace("/", "");
    case 2:
    case 9:
      return cj.R(this.fdL.getText().toString(), "");
    case 0:
    case 8:
    case 10:
      return cj.R(this.fdL.getText().toString(), "");
    case 6:
      return this.fdL.get3DesVerifyCode();
    case 7:
    }
    return this.fdL.getEncryptDataWithHash(true);
  }

  public final void jN(int paramInt)
  {
    if (this.fdL != null)
      this.fdL.setBackgroundResource(paramInt);
  }

  public final void jO(int paramInt)
  {
    if (this.cMs != null)
      this.cMs.setTextColor(paramInt);
  }

  public final void jP(int paramInt)
  {
    this.fdN = paramInt;
    if (paramInt == 1)
    {
      this.fdL.setKeyListener(new g(this));
      return;
    }
    this.fdL.setInputType(1);
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (this.dHP != null)
      this.dHP.onFocusChange(this, paramBoolean);
    if (!this.dIg);
    for (boolean bool = true; ; bool = false)
    {
      if ((bool == paramBoolean) && (!paramBoolean) && (this.dIf != null))
        this.dIf.run();
      this.dIg = paramBoolean;
      aa.d("MicroMsg.EditHintView", "View:" + this.dHW + ", editType:" + this.dIa + " onFocusChange to " + paramBoolean);
      if (this.fdK != null)
        this.fdK.aN(this.dIb);
      if (this.dIb)
        break;
      this.cMs.setEnabled(false);
      return;
    }
    this.cMs.setEnabled(true);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    if (!this.dIe)
    {
      if (this.dHS.getVisibility() != 0)
        break label125;
      bool2 = bool1;
      if (!bool2)
        break label136;
      Rect localRect = new Rect();
      this.dHS.getHitRect(localRect);
      localRect.left = (-50 + localRect.left);
      localRect.right = (50 + localRect.right);
      localRect.top = (-25 + localRect.top);
      localRect.bottom = (25 + localRect.bottom);
      if (!localRect.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
        break label130;
      bool3 = bool1;
    }
    while (true)
    {
      if (bool3)
        bool1 = false;
      return bool1;
      label125: bool2 = false;
      break;
      label130: bool3 = false;
      continue;
      label136: bool3 = false;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.dIa == 7)
    {
      setMeasuredDimension(getDefaultSize(com.tencent.mm.sdk.platformtools.e.a(getContext(), 960.0F), paramInt1), getDefaultSize(com.tencent.mm.sdk.platformtools.e.a(getContext(), 720.0F), paramInt2));
      int i = getMeasuredWidth();
      int j = i / 6;
      paramInt1 = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
      paramInt2 = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
      setMeasuredDimension(getDefaultSize(i, paramInt1), getDefaultSize(j, paramInt2));
    }
    super.onMeasure(paramInt1, paramInt2);
  }

  public final void pL(String paramString)
  {
    this.fdL.setHint(paramString);
  }

  public final void pM(String paramString)
  {
    switch (this.dIa)
    {
    default:
      this.fdL.setText(paramString);
      this.fdL.setSelection(this.fdL.getText().length());
    case 1:
    }
    do
      return;
    while (cj.hX(paramString));
    this.fdL.setSelection(0);
    this.fdL.setBankcardTailNum(paramString);
    this.dHY = (24 - paramString.length());
    TenpaySecureEditText localTenpaySecureEditText = this.fdL;
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(this.dHY);
    localTenpaySecureEditText.setFilters(arrayOfInputFilter);
  }

  public final boolean pN(String paramString)
  {
    if (!cj.hX(paramString))
    {
      KeyListener localKeyListener = this.fdL.getKeyListener();
      this.fdL.setKeyListener(null);
      setEnabled(false);
      setClickable(false);
      pM(paramString);
      this.fdL.setKeyListener(localKeyListener);
      setVisibility(0);
      return true;
    }
    setVisibility(8);
    return false;
  }

  public void setClickable(boolean paramBoolean)
  {
    super.setClickable(paramBoolean);
    this.dHX = paramBoolean;
    if (!paramBoolean)
    {
      this.fdL.setEnabled(false);
      if (!this.dIe)
        this.fdL.setTextColor(getResources().getColor(com.tencent.mm.f.aaD));
      while (true)
      {
        this.fdL.setFocusable(false);
        this.fdL.setClickable(false);
        return;
        this.fdL.setTextColor(getResources().getColor(this.fdO));
      }
    }
    this.fdL.setEnabled(true);
    if (!this.dIe)
      this.fdL.setTextColor(getResources().getColor(com.tencent.mm.f.aaF));
    while (true)
    {
      this.fdL.setFocusable(true);
      this.fdL.setClickable(true);
      return;
      this.fdL.setTextColor(getResources().getColor(this.fdO));
    }
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.dIe = paramBoolean;
    this.dHS.setEnabled(true);
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    super.setOnClickListener(paramOnClickListener);
  }

  public final void setOnEditorActionListener(TextView.OnEditorActionListener paramOnEditorActionListener)
  {
    this.fdL.setOnEditorActionListener(paramOnEditorActionListener);
  }

  public void setOnFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    super.setOnFocusChangeListener(paramOnFocusChangeListener);
    this.dHP = paramOnFocusChangeListener;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.EditHintView
 * JD-Core Version:    0.6.2
 */