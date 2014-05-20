package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.model.co;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.cx;
import com.tencent.mm.ui.tools.dl;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

public class SelfQRCodeUI extends MMActivity
  implements m
{
  private String bPx = "";
  private ProgressDialog cIr = null;
  private Bitmap ckx = null;
  private ImageView daU = null;
  private ImageView hdC = null;
  private TextView hee = null;
  private TextView hef = null;

  private void aw(String paramString, int paramInt)
  {
    com.tencent.mm.ad.a locala = new com.tencent.mm.ad.a(paramString, paramInt);
    be.uA().d(locala);
    Activity localActivity = aal();
    getString(2131167675);
    this.cIr = com.tencent.mm.ui.base.h.a(localActivity, getString(2131168375), true, new s(this, locala, paramString));
  }

  protected final void FR()
  {
    this.bPx = getIntent().getStringExtra("from_userName");
    if (au.hX(this.bPx))
      this.bPx = com.tencent.mm.model.v.th();
    if (w.cp(this.bPx))
    {
      mn(2131165823);
      ((TextView)findViewById(2131363640)).setText(2131168396);
      dg(false);
      this.hdC = ((ImageView)findViewById(2131363639));
      this.daU = ((ImageView)findViewById(2131363636));
      this.hee = ((TextView)findViewById(2131363637));
      this.hef = ((TextView)findViewById(2131363638));
      if (!w.cp(this.bPx))
        break label367;
      if (this.ckx != null)
        break label341;
      aa.e("MicroMsg.SelfQRCodeNewUI", "%s", new Object[] { "bitmap == null" });
      aw(this.bPx, 0);
      label159: com.tencent.mm.pluginsdk.ui.c.a(this.daU, this.bPx);
      i locali = be.uz().su().tO(this.bPx);
      this.hee.setSingleLine(false);
      this.hee.setMaxLines(3);
      this.hee.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      if (locali == null)
        break label355;
      String str9 = locali.kn();
      if (au.hX(str9))
        str9 = be.uz().sA().tt(this.bPx).field_displayname;
      TextView localTextView2 = this.hee;
      localTextView2.setText(com.tencent.mm.ao.b.c(this, str9, (int)this.hee.getTextSize()));
      label280: this.hef.setVisibility(8);
    }
    while (true)
    {
      this.hdC.setOnClickListener(new p(this));
      a(0, 2130838841, new q(this));
      a(new r(this));
      return;
      mn(2131165825);
      break;
      label341: this.hdC.setImageBitmap(this.ckx);
      break label159;
      label355: this.hee.setVisibility(8);
      break label280;
      label367: String str1 = (String)be.uz().sr().get(42);
      String str2 = getString(2131167766);
      Object localObject;
      if (!au.hX(str1))
      {
        localObject = str2 + str1;
        label417: aa.e("MicroMsg.SelfQRCodeNewUI", "display user name = %s", new Object[] { localObject });
        this.ckx = com.tencent.mm.ad.b.BS();
        if (this.ckx != null)
          break label737;
        aa.e("MicroMsg.SelfQRCodeNewUI", "%s", new Object[] { "bitmap == null" });
        xu(this.bPx);
      }
      while (true)
      {
        com.tencent.mm.pluginsdk.ui.c.a(this.daU, com.tencent.mm.model.v.th());
        String str5 = (String)be.uz().sr().get(4);
        aa.e("MicroMsg.SelfQRCodeNewUI", "nick name = %s", new Object[] { str5 });
        TextView localTextView1 = this.hee;
        localTextView1.setText(com.tencent.mm.ao.b.c(this, str5, (int)this.hee.getTextSize()));
        co localco = co.vw();
        String str6 = au.hW(localco.rC());
        String str7 = au.hW(localco.rD());
        String str8 = w.dj(str6) + " " + str7;
        aa.e("MicroMsg.SelfQRCodeNewUI", "display location = %s", new Object[] { str8 });
        this.hef.setText(str8);
        switch (au.a((Integer)be.uz().sr().get(12290), 0))
        {
        default:
          break;
        case 1:
          this.hee.setCompoundDrawablesWithIntrinsicBounds(null, null, com.tencent.mm.an.a.k(this, 2130838636), null);
          break;
          String str3 = (String)be.uz().sr().get(2);
          String str4 = str2 + str3;
          i.tD(str3);
          localObject = str4;
          break label417;
          label737: this.hdC.setImageBitmap(this.ckx);
        case 2:
        }
      }
      this.hee.setCompoundDrawablesWithIntrinsicBounds(null, null, com.tencent.mm.an.a.k(this, 2130838635), null);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.SelfQRCodeNewUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramx.getType() != 168) || (cx.a(aal(), paramInt1, paramInt2, 7)))
      return;
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      Toast.makeText(this, getString(2131168376, arrayOfObject), 0).show();
      return;
    }
    byte[] arrayOfByte;
    Bitmap localBitmap;
    if (w.cp(this.bPx))
    {
      dg(true);
      arrayOfByte = com.tencent.mm.ad.b.gk(this.bPx);
      localBitmap = null;
      if (arrayOfByte != null);
    }
    for (this.ckx = localBitmap; ; this.ckx = com.tencent.mm.ad.b.BS())
    {
      this.hdC.setImageBitmap(this.ckx);
      return;
      localBitmap = com.tencent.mm.sdk.platformtools.h.cj(arrayOfByte);
      break;
    }
  }

  final void aMa()
  {
    dl localdl = new dl(this);
    localdl.a(new t(this));
    localdl.b(new u(this));
    localdl.cB();
  }

  final void aMb()
  {
    byte[] arrayOfByte;
    if (w.cp(this.bPx))
    {
      Bitmap localBitmap = com.tencent.mm.sdk.platformtools.h.ae(findViewById(2131363635));
      arrayOfByte = null;
      if (localBitmap != null)
      {
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        localBitmap.compress(Bitmap.CompressFormat.PNG, 90, localByteArrayOutputStream);
        arrayOfByte = localByteArrayOutputStream.toByteArray();
      }
      if (arrayOfByte == null)
        arrayOfByte = com.tencent.mm.ad.b.gk(this.bPx);
    }
    while (true)
    {
      String str2;
      if ((arrayOfByte != null) && (arrayOfByte.length > 0))
        str2 = com.tencent.mm.pluginsdk.ui.tools.s.auS() + "mmqrcode" + System.currentTimeMillis() + ".png";
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(str2);
        localFileOutputStream.write(arrayOfByte);
        localFileOutputStream.close();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = com.tencent.mm.pluginsdk.ui.tools.s.auS();
        Toast.makeText(this, getString(2131166697, arrayOfObject), 1).show();
        com.tencent.mm.pluginsdk.ui.tools.s.d(str2, this);
        return;
        String str1 = com.tencent.mm.model.v.th();
        au.c((Integer)be.uz().sr().get(66561));
        arrayOfByte = com.tencent.mm.ad.b.gk(str1);
      }
      catch (Exception localException)
      {
      }
    }
  }

  final void aMl()
  {
    ca localca = be.uz().sz().vB("@t.qq.com");
    if (au.c((Integer)be.uz().sr().get(9)) != 0);
    for (int i = 1; ; i = 0)
    {
      ArrayList localArrayList = new ArrayList();
      if ((localca != null) && (i != 0))
        localArrayList.add(getString(2131168379));
      if (i != 0)
        localArrayList.add(getString(2131168380));
      if (!"zh_CN".equals(z.a(getSharedPreferences(al.azs(), 0))))
        localArrayList.add(getString(2131168382));
      if ((!com.tencent.mm.x.b.Bj()) || (localArrayList.size() == 0))
        localArrayList.add(getString(2131168381));
      String[] arrayOfString = (String[])localArrayList.toArray(new String[localArrayList.size()]);
      com.tencent.mm.ui.base.h.b(this, "", arrayOfString, "", new v(this, arrayOfString));
      return;
    }
  }

  protected final int getLayoutId()
  {
    return 2130903676;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(158, this);
    be.uA().a(168, this);
    FR();
  }

  public void onDestroy()
  {
    be.uA().b(168, this);
    be.uA().b(158, this);
    if ((this.ckx != null) && (!this.ckx.isRecycled()))
      this.ckx.recycle();
    super.onDestroy();
  }

  final void xu(String paramString)
  {
    aw(paramString, au.c((Integer)be.uz().sr().get(66561)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SelfQRCodeUI
 * JD-Core Version:    0.6.2
 */