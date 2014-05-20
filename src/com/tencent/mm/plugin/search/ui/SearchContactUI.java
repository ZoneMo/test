package com.tencent.mm.plugin.search.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout.LayoutParams;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.v;
import com.tencent.mm.plugin.search.model.ad;
import com.tencent.mm.plugin.search.model.af;
import com.tencent.mm.plugin.search.model.at;
import com.tencent.mm.pluginsdk.ui.VoiceSearchLayout;
import com.tencent.mm.pluginsdk.ui.tools.w;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import java.util.List;

public class SearchContactUI extends MMActivity
  implements w
{
  String eho;
  private e eiA;
  private boolean eiB;
  int eiC;
  af eiD = null;
  af eiE = null;
  List eiF;
  List eiG;
  List eiH;
  private ad eiI = new c(this);
  private ad eiJ = new d(this);
  private com.tencent.mm.pluginsdk.ui.tools.u eix;
  private VoiceSearchLayout eiy;
  private ListView eiz;
  Handler mHandler;
  private View nU;

  protected final void FR()
  {
    this.eiy = new VoiceSearchLayout(this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(14);
    this.eiy.setLayoutParams(localLayoutParams);
    this.eiy.kj(com.tencent.mm.sdk.platformtools.e.a(this, 100.0F));
    this.eiy.arN();
    this.eiy.setVisibility(8);
    ((ViewGroup)aET()).setVisibility(0);
    ((ViewGroup)aET()).addView(this.eiy);
    this.eix = new com.tencent.mm.pluginsdk.ui.tools.u();
    this.eix.aND();
    this.eix.a(this);
    this.eix.r(this.eiy);
    this.eix.cP(cj.azT());
    this.nU = findViewById(i.background);
    this.nU.setOnClickListener(new a(this));
    this.eiz = ((ListView)findViewById(i.aIy));
    this.eiA = new e(this);
    this.eiz.setAdapter(this.eiA);
    this.eiz.setOnItemClickListener(new u());
    this.eiz.setOnTouchListener(new b(this));
  }

  public final boolean FT()
  {
    SM();
    return true;
  }

  public final void FU()
  {
    finish();
  }

  public final void FV()
  {
  }

  public final void a(boolean paramBoolean, String[] paramArrayOfString, long paramLong, int paramInt)
  {
    if (paramBoolean)
    {
      com.tencent.mm.ak.a.a(this, ".ui.voicesearch.VoiceSearchResultUI", new Intent().putExtra("VoiceSearchResultUI_Resultlist", paramArrayOfString).putExtra("VoiceSearchResultUI_VoiceId", paramLong).putExtra("VoiceSearchResultUI_ShowType", paramInt));
      return;
    }
    com.tencent.mm.ak.a.a(this, ".ui.voicesearch.VoiceSearchResultUI", new Intent().putExtra("VoiceSearchResultUI_Resultlist", new String[0]).putExtra("VoiceSearchResultUI_Error", aal().getString(n.bmF)).putExtra("VoiceSearchResultUI_VoiceId", paramLong).putExtra("VoiceSearchResultUI_ShowType", paramInt));
  }

  public final void abb()
  {
    SM();
  }

  public final void abc()
  {
  }

  protected final int getLayoutId()
  {
    return k.aYY;
  }

  public final void ig(String paramString)
  {
    if (this.eiD != null)
      at.c(this.eiD);
    if (this.eiE != null)
    {
      at.c(this.eiE);
      this.eiE = null;
    }
    this.eho = paramString;
    if (paramString.length() == 0)
    {
      this.eiD = null;
      this.nU.setVisibility(0);
      this.eiz.setVisibility(8);
      return;
    }
    this.eiD = at.a(paramString, this.eiB, this.eiI, this.mHandler);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mHandler = new Handler();
    String str = (String)be.uz().sr().get(6);
    if ((str != null) && (str.length() > 0));
    for (boolean bool = true; ; bool = false)
    {
      this.eiB = bool;
      this.eiB &= cj.Bj();
      FR();
      switch (getIntent().getIntExtra("from_tab_index", -1))
      {
      case 1:
      default:
        this.eiC = 0;
        return;
      case 0:
      case 2:
      }
    }
    this.eiC = 1;
    return;
    this.eiC = 2;
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.eix.b(this, paramMenu);
    return true;
  }

  protected void onDestroy()
  {
    super.onDestroy();
    ab.yf().ya();
  }

  protected void onPause()
  {
    super.onPause();
    this.eix.cancel();
    this.eix.clearFocus();
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    this.eix.a(this, paramMenu);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.SearchContactUI
 * JD-Core Version:    0.6.2
 */