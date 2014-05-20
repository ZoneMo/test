package com.tencent.mm.ui.pluginapp;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.tools.c;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import com.tencent.mm.ui.cx;
import java.io.IOException;

public class ContactSearchUI extends MMActivity
  implements com.tencent.mm.n.m
{
  private ProgressDialog cIr = null;
  private EditText hdj;

  private void aLW()
  {
    String str = this.hdj.getText().toString().trim();
    if ((str == null) || (str.length() <= 0))
    {
      h.c(aal(), 2131165327, 2131167675);
      return;
    }
    aa.d("MicroMsg.ContactSearchUI", "always search contact from internet!!!");
    aj localaj = new aj(str);
    be.uA().d(localaj);
    Activity localActivity = aal();
    getString(2131167675);
    this.cIr = h.a(localActivity, getString(2131166178), true, new o(this, localaj));
  }

  private static int xq(String paramString)
  {
    int i = 3;
    if (au.hS(paramString))
      i = 1;
    do
    {
      return i;
      if (au.hT(paramString))
        return 2;
    }
    while (!au.hU(paramString));
    return i;
  }

  protected final void FR()
  {
    mn(2131166424);
    this.hdj = ((EditText)findViewById(2131362442));
    this.hdj.addTextChangedListener(new k(this));
    this.hdj.setImeOptions(3);
    this.hdj.setOnEditorActionListener(new l(this));
    a(0, getString(2131167696), new m(this));
    a(new n(this));
    if (getIntent().getBooleanExtra("from_webview", false))
    {
      String str = getIntent().getStringExtra("userName");
      this.hdj.setText(str);
      aLW();
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.ContactSearchUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (cx.a(aal(), paramInt1, paramInt2, 7));
    sj localsj;
    String str;
    Intent localIntent2;
    do
    {
      return;
      if ((paramInt1 == 4) && (paramInt2 == -4))
      {
        h.c(aal(), 2131166179, 2131167675);
        return;
      }
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        Toast.makeText(this, getString(2131165283), 0).show();
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        aa.w("MicroMsg.ContactSearchUI", getString(2131165282, arrayOfObject));
        return;
      }
      localsj = ((aj)paramx).CB();
      if (localsj.fKH > 0)
      {
        Intent localIntent1 = new Intent();
        localIntent1.setClass(this, ContactSearchResultUI.class);
        try
        {
          localIntent1.putExtra("result", localsj.toByteArray());
          startActivity(localIntent1);
          return;
        }
        catch (IOException localIOException)
        {
          return;
        }
      }
      str = an.a(localsj.fEI);
      localIntent2 = new Intent();
      c.a(localIntent2, localsj, xq(this.hdj.getText().toString().trim()));
      localIntent2.setClass(this, ContactInfoUI.class);
    }
    while (au.hW(str).length() <= 0);
    if ((0x8 & localsj.fNp) > 0)
      com.tencent.mm.plugin.d.c.m.dZN.j(10298, str + "," + xq(this.hdj.getText().toString().trim()));
    startActivity(localIntent2);
  }

  protected final int getLayoutId()
  {
    return 2130903230;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  protected void onPause()
  {
    be.uA().b(106, this);
    super.onPause();
  }

  protected void onResume()
  {
    be.uA().a(106, this);
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.ContactSearchUI
 * JD-Core Version:    0.6.2
 */