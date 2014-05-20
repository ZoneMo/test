package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.EditText;
import com.tencent.mm.an.a;
import com.tencent.mm.g;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;

public class EditPreference extends Preference
{
  private x dpV;
  private ai gFO;
  private m gFU;
  private EditText gFV;
  private String value;

  public EditPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public EditPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public EditPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final void a(ai paramai)
  {
    this.gFO = paramai;
  }

  public final void a(m paramm)
  {
    this.gFU = paramm;
  }

  public final String getValue()
  {
    return this.value;
  }

  public final void setValue(String paramString)
  {
    this.value = paramString;
  }

  public final void showDialog()
  {
    EditText localEditText;
    if (this.gFV != null)
      localEditText = this.gFV;
    while (true)
    {
      ViewGroup.LayoutParams localLayoutParams = localEditText.getLayoutParams();
      if ((localLayoutParams instanceof ViewGroup.MarginLayoutParams))
      {
        ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)localLayoutParams;
        int i = localEditText.getResources().getDimensionPixelSize(g.aaQ);
        localMarginLayoutParams.leftMargin = i;
        localMarginLayoutParams.rightMargin = i;
        localMarginLayoutParams.topMargin = i;
        localMarginLayoutParams.bottomMargin = i;
      }
      if (localEditText.getParent() != null)
        ((ViewGroup)localEditText.getParent()).removeView(localEditText);
      this.dpV = h.a(getContext(), getTitle().toString(), localEditText, a.m(getContext(), n.bee), a.m(getContext(), n.bds), new k(this, localEditText), new l(this));
      return;
      localEditText = new EditText(getContext());
      localEditText.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
      localEditText.setSingleLine(true);
      localEditText.setText(this.value);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.EditPreference
 * JD-Core Version:    0.6.2
 */