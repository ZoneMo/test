package com.tencent.mm.plugin.base.stub;

import android.content.Intent;
import android.net.Uri;
import com.tencent.mm.a.f;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.sdk.modelmsg.j;
import com.tencent.mm.sdk.platformtools.aa;

public class WXEntryActivity extends AutoLoginActivity
{
  private String appId;
  private String authority;
  private String bMO;
  private int cOs;

  private static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte1.length == 0) || (paramArrayOfByte2 == null) || (paramArrayOfByte2.length == 0))
    {
      aa.e("MicroMsg.WXEntryActivity", "checkSumConsistent fail, invalid arguments");
      return false;
    }
    if (paramArrayOfByte1.length != paramArrayOfByte2.length)
    {
      aa.e("MicroMsg.WXEntryActivity", "checkSumConsistent fail, length is different");
      return false;
    }
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte1.length)
        break label66;
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i])
        break;
    }
    label66: return true;
  }

  private static byte[] c(String paramString1, int paramInt, String paramString2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramString1 != null)
      localStringBuffer.append(paramString1);
    localStringBuffer.append(paramInt);
    localStringBuffer.append(paramString2);
    localStringBuffer.append("mMcShCsTr");
    return f.h(localStringBuffer.toString().substring(1, 9).getBytes()).getBytes();
  }

  private static boolean fe(int paramInt)
  {
    return paramInt >= 553713665;
  }

  protected final void a(a parama, Intent paramIntent)
  {
    aa.d("MicroMsg.WXEntryActivity", "postLogin, loginResult = " + parama);
    switch (y.cOH[parama.ordinal()])
    {
    default:
      aa.e("MicroMsg.WXEntryActivity", "postLogin, unknown login result = " + parama);
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      finish();
      return;
      Intent localIntent1 = getIntent();
      k localk;
      if (("sendreq".equals(this.authority)) || ("sendresp".equals(this.authority)))
      {
        localk = l.F(this.appId, true);
        if (localk == null)
          aa.w("MicroMsg.WXEntryActivity", "app not reg, do nothing");
      }
      while (true)
      {
        finish();
        return;
        if (localk.field_status == 3)
        {
          aa.e("MicroMsg.WXEntryActivity", "send fail, app is in blacklist");
        }
        else if (!u.b(this, localk, this.bMO))
        {
          aa.e("MicroMsg.WXEntryActivity", "send fail, check app fail");
        }
        else if (new j(localIntent1.getExtras()).bLN == 2)
        {
          Intent localIntent2 = new Intent();
          localIntent2.addFlags(268435456).addFlags(67108864);
          localIntent2.putExtras(localIntent1.getExtras());
          com.tencent.mm.ak.a.b(this, "favorite", ".ui.FavOpenApiEntry", localIntent2);
        }
        else
        {
          startActivity(new Intent(this, UIEntryStub.class).addFlags(268435456).addFlags(67108864).putExtras(localIntent1.getExtras()));
          continue;
          aa.e("MicroMsg.WXEntryActivity", "unknown authority, should never reached, authority=" + this.authority);
        }
      }
      aa.e("MicroMsg.WXEntryActivity", "postLogin fail, loginResult = " + parama);
    }
  }

  protected final boolean f(Intent paramIntent)
  {
    this.cOs = paramIntent.getIntExtra("_mmessage_sdkVersion", 0);
    if (!fe(this.cOs))
    {
      aa.e("MicroMsg.WXEntryActivity", "sdk version is not supported, sdkVersion = " + this.cOs);
      finish();
      return false;
    }
    String str = paramIntent.getStringExtra("_mmessage_content");
    if (str == null)
    {
      aa.e("MicroMsg.WXEntryActivity", "check appid failed, null content");
      finish();
      return false;
    }
    Uri localUri = Uri.parse(str);
    this.authority = localUri.getAuthority();
    this.appId = localUri.getQueryParameter("appid");
    aa.d("MicroMsg.WXEntryActivity", "preLogin, appId = " + this.appId);
    if ((this.appId == null) || (this.appId.length() <= 0))
    {
      aa.e("MicroMsg.WXEntryActivity", "invalid appid, ignore");
      finish();
      return false;
    }
    this.bMO = paramIntent.getStringExtra("_mmessage_appPackage");
    aa.d("MicroMsg.WXEntryActivity", "preLogin, pkg = " + this.bMO);
    if ((this.bMO == null) || (this.bMO.length() <= 0))
    {
      aa.e("MicroMsg.WXEntryActivity", "unknown package, ignore");
      finish();
      return false;
    }
    if (!a(paramIntent.getByteArrayExtra("_mmessage_checksum"), c(str, this.cOs, this.bMO)))
    {
      aa.e("MicroMsg.WXEntryActivity", "checksum fail");
      finish();
      return false;
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.WXEntryActivity
 * JD-Core Version:    0.6.2
 */