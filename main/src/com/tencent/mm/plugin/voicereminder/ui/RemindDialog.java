package com.tencent.mm.plugin.voicereminder.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.voicereminder.a.f;
import com.tencent.mm.plugin.voicereminder.a.j;
import com.tencent.mm.ui.base.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RemindDialog extends Activity
{
  private static List ePs = new ArrayList();
  private static boolean ePt = false;
  private String bNl = "";
  private x dpV;
  private List ePr = new ArrayList();
  private j ePu = new a(this);
  private Handler handler = new Handler();

  private void alk()
  {
    this.handler.post(new e(this));
  }

  public static void j(Context paramContext, String paramString1, String paramString2)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.RemindDialog", "show " + ePt + " remind " + paramString2);
    if (ePt)
    {
      ePs.add(paramString2);
      return;
    }
    ePs.clear();
    ePt = true;
    if (be.uA().wR())
    {
      Intent localIntent1 = new Intent(paramContext, RemindDialog.class);
      localIntent1.putExtra("_RemindDialog_User", paramString1);
      localIntent1.putExtra("_RemindDialog_Remind", paramString2);
      localIntent1.setFlags(603979776);
      localIntent1.addFlags(268435456);
      paramContext.startActivity(localIntent1);
      return;
    }
    Intent localIntent2 = new Intent(paramContext, RemindDialog.class);
    localIntent2.putExtra("_RemindDialog_User", paramString1);
    localIntent2.putExtra("_RemindDialog_Remind", paramString2);
    localIntent2.setFlags(604012544);
    localIntent2.addFlags(268435456);
    paramContext.startActivity(localIntent2);
  }

  protected final void a(Class paramClass, Intent paramIntent)
  {
    paramIntent.setClass(this, paramClass);
    startActivity(paramIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    com.tencent.mm.ui.base.aa localaa = new com.tencent.mm.ui.base.aa(this);
    localaa.mR(2131167081);
    localaa.wg(" ");
    localaa.b(2131167079, new b(this));
    localaa.c(2131167080, new c(this));
    localaa.a(new d(this));
    this.bNl = getIntent().getStringExtra("_RemindDialog_User");
    String str1 = getIntent().getStringExtra("_RemindDialog_Remind");
    this.ePr.clear();
    this.ePr.add(str1);
    Iterator localIterator = ePs.iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      this.ePr.add(str2);
    }
    this.dpV = localaa.aGI();
    this.dpV.setCanceledOnTouchOutside(false);
    this.dpV.show();
    alk();
  }

  public void onPause()
  {
    ePt = false;
    f localf = (f)be.uh().dN(f.class.getName());
    if (localf != null)
      localf.b(this.ePu);
    super.onPause();
  }

  public void onResume()
  {
    ePt = true;
    f localf = (f)be.uh().dN(f.class.getName());
    if (localf != null)
      localf.a(this.ePu);
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.ui.RemindDialog
 * JD-Core Version:    0.6.2
 */