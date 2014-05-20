package com.tencent.mm.ui.qrcode;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.ad.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.cx;
import java.io.FileOutputStream;

public class ShowQRCodeStep1UI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private ImageView hdC = null;
  private int hdx = 1;

  protected final void FR()
  {
    mn(2131168378);
    this.hdC = ((ImageView)findViewById(2131363639));
    this.hdx = getIntent().getIntExtra("show_to", 1);
    TextView localTextView = (TextView)findViewById(2131363741);
    Bitmap localBitmap;
    if (this.hdx == 3)
    {
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = getString(2131168399);
      localTextView.setText(getString(2131168397, arrayOfObject4));
      localBitmap = com.tencent.mm.ad.b.BS();
      if (localBitmap != null)
        break label245;
      aMc();
    }
    while (true)
    {
      a(new q(this));
      a(0, 2130838841, new r(this));
      ((Button)findViewById(2131363742)).setOnClickListener(new s(this));
      return;
      if (this.hdx == 4)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = getString(2131168398);
        localTextView.setText(getString(2131168397, arrayOfObject3));
        break;
      }
      if (this.hdx == 2)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = getString(2131168401);
        localTextView.setText(getString(2131168397, arrayOfObject2));
        break;
      }
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = getString(2131168400);
      localTextView.setText(getString(2131168397, arrayOfObject1));
      break;
      label245: this.hdC.setImageBitmap(localBitmap);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    arrayOfObject1[2] = paramString;
    aa.d("MicroMsg.ShowQRCodeStep1UI", "onSceneEnd: errType = %d errCode = %d errMsg = %s", arrayOfObject1);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (cx.a(aal(), paramInt1, paramInt2, 7))
      return;
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(paramInt1);
      arrayOfObject2[1] = Integer.valueOf(paramInt2);
      Toast.makeText(this, getString(2131168376, arrayOfObject2), 0).show();
      return;
    }
    this.hdC.setImageBitmap(com.tencent.mm.ad.b.BS());
  }

  final void aMa()
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = getString(2131168383);
    arrayOfString[1] = getString(2131168385);
    h.c(this, "", arrayOfString, "", new t(this));
  }

  final void aMb()
  {
    String str1 = v.th();
    au.c((Integer)be.uz().sr().get(66561));
    byte[] arrayOfByte = com.tencent.mm.ad.b.gk(str1);
    String str2;
    if ((arrayOfByte != null) && (arrayOfByte.length > 0))
      str2 = com.tencent.mm.pluginsdk.ui.tools.s.auS() + "mmqrcode" + System.currentTimeMillis() + ".png";
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(str2);
      localFileOutputStream.write(arrayOfByte);
      localFileOutputStream.close();
      Toast.makeText(this, getString(2131166697, new Object[] { str2 }), 1).show();
      com.tencent.mm.pluginsdk.ui.tools.s.d(str2, this);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  final void aMc()
  {
    a locala = new a();
    be.uA().d(locala);
    Activity localActivity = aal();
    getString(2131167675);
    this.cIr = h.a(localActivity, getString(2131168375), true, new u(this, locala));
  }

  protected final int getLayoutId()
  {
    return 2130903712;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    be.uA().a(168, this);
  }

  public void onDestroy()
  {
    be.uA().b(168, this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.ShowQRCodeStep1UI
 * JD-Core Version:    0.6.2
 */