package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;
import com.tencent.mm.k;
import com.tencent.mm.p;
import com.tencent.mm.ui.base.aa;
import com.tencent.mm.ui.base.x;
import java.util.HashMap;

public final class DialogPreference extends Preference
{
  private x dpV;
  private ai gFO;
  private final f gFQ;
  private i gFR;

  public DialogPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public DialogPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public DialogPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.gFQ = new f(paramContext);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJe, paramInt, 0);
    this.gFQ.gFM = localTypedArray.getTextArray(0);
    this.gFQ.gFN = localTypedArray.getTextArray(1);
    localTypedArray.recycle();
    this.gFQ.aIa();
  }

  public final void a(ai paramai)
  {
    this.gFO = paramai;
  }

  public final void a(i parami)
  {
    this.gFR = parami;
  }

  public final String getValue()
  {
    return this.gFQ.value;
  }

  public final void onBindView(View paramView)
  {
    e locale = (e)this.gFQ.bZy.get(this.gFQ.value);
    if (locale != null)
      setSummary(locale.text);
    super.onBindView(paramView);
  }

  public final void setValue(String paramString)
  {
    this.gFQ.value = paramString;
    e locale = (e)this.gFQ.bZy.get(paramString);
    if (locale == null)
    {
      this.gFQ.dKf = -1;
      return;
    }
    this.gFQ.dKf = locale.id;
  }

  protected final void showDialog()
  {
    ListView localListView = (ListView)View.inflate(getContext(), k.aWx, null);
    localListView.setOnItemClickListener(new h(this));
    localListView.setAdapter(this.gFQ);
    aa localaa = new aa(getContext());
    localaa.wf(getTitle().toString());
    localaa.ai(localListView);
    this.dpV = localaa.aGI();
    this.dpV.show();
    com.tencent.mm.ui.base.h.a(getContext(), this.dpV);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.DialogPreference
 * JD-Core Version:    0.6.2
 */