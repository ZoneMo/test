package com.tencent.mm.ui.openapi;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.p;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.o;
import com.tencent.mm.ui.base.MMGridView;
import com.tencent.mm.ui.base.preference.Preference;

public class AppPreference extends Preference
{
  private Context context;
  private AdapterView.OnItemClickListener gzP = null;
  private int hcI = 0;
  private e hcK;
  private AdapterView.OnItemClickListener hcL = null;
  private View.OnClickListener hcM = null;
  private int hcN;
  private boolean hcO = false;
  private int hcP = 0;

  public AppPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public AppPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public AppPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJb);
    this.hcN = localTypedArray.getInt(0, 8);
    this.hcO = localTypedArray.getBoolean(1, false);
    this.hcP = localTypedArray.getResourceId(2, 0);
    localTypedArray.recycle();
  }

  public final void aLU()
  {
    e locale;
    if (this.hcK != null)
    {
      locale = this.hcK;
      if (this.hcK.aLT())
        break label30;
    }
    label30: for (boolean bool = true; ; bool = false)
    {
      locale.ed(bool);
      return;
    }
  }

  public final void b(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.hcL = paramOnItemClickListener;
  }

  public final k kv(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.hcK.getCount()))
      return null;
    return (k)this.hcK.getItem(paramInt);
  }

  public final void nR(int paramInt)
  {
    this.hcI = paramInt;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    MMGridView localMMGridView = (MMGridView)paramView.findViewById(2131361966);
    this.hcK = new e(this.context, this.hcI);
    localMMGridView.setAdapter(this.hcK);
    localMMGridView.setOnItemClickListener(new g(this));
    if (this.hcO)
      localMMGridView.setOnItemLongClickListener(new h(this));
    TextView localTextView = (TextView)paramView.findViewById(2131361967);
    if (this.hcK.getCount() == 0)
    {
      localTextView.setVisibility(0);
      localTextView.setText(this.hcP);
      localMMGridView.setVisibility(8);
    }
    while (true)
    {
      Button localButton = (Button)paramView.findViewById(2131361968);
      localButton.setVisibility(this.hcN);
      localButton.setOnClickListener(this.hcM);
      return;
      localTextView.setVisibility(8);
      localMMGridView.setVisibility(0);
    }
  }

  public final void onPause()
  {
    if (this.hcK != null)
      ba.HE().f(this.hcK);
  }

  public final void onResume()
  {
    if (this.hcK != null)
      ba.HE().e(this.hcK);
  }

  public final void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.gzP = paramOnItemClickListener;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.openapi.AppPreference
 * JD-Core Version:    0.6.2
 */