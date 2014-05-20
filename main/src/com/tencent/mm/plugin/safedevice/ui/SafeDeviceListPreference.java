package com.tencent.mm.plugin.safedevice.ui;

import android.app.ProgressDialog;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.plugin.safedevice.a.c;
import com.tencent.mm.plugin.safedevice.a.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.preference.Preference;

public class SafeDeviceListPreference extends Preference
  implements m
{
  private ProgressDialog cIr;
  private Button cXX;
  private Context context;
  private c eaq;
  private boolean ear = false;
  private u eas;
  private v eat;
  private int mode = -2;

  public SafeDeviceListPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public SafeDeviceListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SafeDeviceListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
  }

  private void FR()
  {
    if (!this.ear)
      aa.d("MicroMsg.SafeDeviceListPreference", "has not binded");
    do
    {
      return;
      switch (this.mode)
      {
      case -1:
      case 0:
      default:
        setWidgetLayoutResource(k.aXe);
        return;
      case 1:
        setWidgetLayoutResource(k.aTu);
      case -2:
      }
    }
    while (this.cXX == null);
    this.cXX.setOnClickListener(new t(this));
    return;
    setWidgetLayoutResource(k.aXe);
  }

  private void Zy()
  {
    be.uA().b(362, this);
  }

  public final c Zx()
  {
    return this.eaq;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Zy();
    if ((this.cIr != null) && (this.cIr.isShowing()))
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramInt2 == 0) && (paramInt2 == 0))
    {
      f.Zu().b(this.eaq, new String[0]);
      if (this.eat != null)
        this.eat.ml(getKey());
    }
    do
    {
      do
        return;
      while (a.cHT.b(this.context, paramInt1, paramInt2));
      Context localContext1 = this.context;
      Context localContext2 = this.context;
      int i = n.bwJ;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      Toast.makeText(localContext1, localContext2.getString(i, arrayOfObject), 0).show();
    }
    while (this.eas == null);
    this.eas.mm(this.eaq.field_uid);
  }

  public final void a(u paramu)
  {
    this.eas = paramu;
  }

  public final void a(v paramv)
  {
    this.eat = paramv;
  }

  public final void b(c paramc)
  {
    this.eaq = paramc;
  }

  public final void fI(int paramInt)
  {
    this.mode = paramInt;
    FR();
  }

  protected final void onBindView(View paramView)
  {
    this.ear = true;
    this.cXX = ((Button)paramView.findViewById(i.ara));
    FR();
    super.onBindView(paramView);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)this.context.getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(i.content);
    if (localViewGroup != null)
    {
      localViewGroup.removeAllViews();
      localLayoutInflater.inflate(k.aWV, localViewGroup);
    }
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.SafeDeviceListPreference
 * JD-Core Version:    0.6.2
 */