package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.p;
import java.util.HashMap;
import junit.framework.Assert;

public final class ChoicePreference extends Preference
{
  private final HashMap bZy = new HashMap();
  private int dKf = -1;
  private RadioGroup gFL;
  private CharSequence[] gFM;
  private CharSequence[] gFN;
  private ai gFO;
  private String value;

  public ChoicePreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public ChoicePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ChoicePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJe, paramInt, 0);
    this.gFM = localTypedArray.getTextArray(0);
    this.gFN = localTypedArray.getTextArray(1);
    localTypedArray.recycle();
    aIa();
  }

  private void aIa()
  {
    int i = 0;
    if (this.gFM == null)
      this.gFM = new CharSequence[0];
    if (this.gFN == null)
      this.gFN = new CharSequence[0];
    if (this.gFM.length == this.gFN.length);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("entries count different", bool);
      this.bZy.clear();
      while (i < this.gFN.length)
      {
        c localc = new c(this.gFM[i], 1048576 + i);
        this.bZy.put(this.gFN[i], localc);
        i++;
      }
    }
  }

  public final void a(ai paramai)
  {
    this.gFO = paramai;
  }

  public final String getValue()
  {
    return this.value;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    if (this.gFL != null)
      this.gFL.check(this.dKf);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(i.content);
    localViewGroup.removeAllViews();
    localLayoutInflater.inflate(k.aWK, localViewGroup);
    this.gFL = ((RadioGroup)localView.findViewById(i.avM));
    int i = 0;
    if (i < this.gFN.length)
    {
      CharSequence localCharSequence = this.gFN[i];
      c localc = (c)this.bZy.get(localCharSequence);
      if (localc != null)
      {
        if (i != 0)
          break label141;
        RadioButton localRadioButton3 = (RadioButton)localLayoutInflater.inflate(k.aWq, null);
        localc.a(localRadioButton3);
        this.gFL.addView(localRadioButton3);
      }
      while (true)
      {
        i++;
        break;
        label141: if (i == -1 + this.gFN.length)
        {
          RadioButton localRadioButton2 = (RadioButton)localLayoutInflater.inflate(k.aWs, null);
          localc.a(localRadioButton2);
          this.gFL.addView(localRadioButton2);
        }
        else
        {
          RadioButton localRadioButton1 = (RadioButton)localLayoutInflater.inflate(k.aWr, null);
          localc.a(localRadioButton1);
          this.gFL.addView(localRadioButton1);
        }
      }
    }
    this.gFL.setOnCheckedChangeListener(new d(this));
    return localView;
  }

  public final void setValue(String paramString)
  {
    this.value = paramString;
    c localc = (c)this.bZy.get(paramString);
    if (localc == null)
    {
      this.dKf = -1;
      return;
    }
    this.dKf = localc.id;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.ChoicePreference
 * JD-Core Version:    0.6.2
 */