package com.tencent.mm.ui.account;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.preference.Preference;

public class LanguagePreference extends Preference
{
  private bb gqv;

  public LanguagePreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public LanguagePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public LanguagePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aWC);
  }

  public final void a(bb parambb)
  {
    if ((parambb == null) || (cj.hX(parambb.Tn())))
    {
      aa.e("MicroMsg.LanguagePreference", "setInfo info error");
      return;
    }
    this.gqv = parambb;
    setKey(parambb.Tn());
  }

  public final bb aFJ()
  {
    return this.gqv;
  }

  protected final void onBindView(View paramView)
  {
    int i = 1;
    super.onBindView(paramView);
    TextView localTextView = (TextView)paramView.findViewById(i.axL);
    CheckBox localCheckBox = (CheckBox)paramView.findViewById(i.aMl);
    int j;
    if (localTextView != null)
    {
      j = i;
      if (localCheckBox == null)
        break label79;
    }
    while (true)
    {
      if ((i & j) != 0)
      {
        localTextView.setText(this.gqv.aFK());
        localCheckBox.setChecked(this.gqv.aFL());
      }
      return;
      j = 0;
      break;
      label79: i = 0;
    }
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(i.content);
    localViewGroup.removeAllViews();
    localLayoutInflater.inflate(k.aWP, localViewGroup);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.LanguagePreference
 * JD-Core Version:    0.6.2
 */