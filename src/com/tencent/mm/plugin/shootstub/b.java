package com.tencent.mm.plugin.shootstub;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.network.aj;
import com.tencent.mm.protocal.a.gh;
import com.tencent.mm.protocal.a.gk;
import com.tencent.mm.protocal.a.gm;
import com.tencent.mm.protocal.a.go;
import com.tencent.mm.protocal.a.gq;
import com.tencent.mm.protocal.a.gw;
import com.tencent.mm.protocal.a.gy;
import com.tencent.mm.protocal.a.hd;
import com.tencent.mm.protocal.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import java.io.IOException;
import java.util.HashMap;

public final class b
  implements bb
{
  private com.tencent.mm.sdk.b.g etA = new c(this);

  private boolean Y(byte[] paramArrayOfByte)
  {
    try
    {
      gy localgy = new gy().bi(paramArrayOfByte);
      com.tencent.mm.plugin.shootstub.a.j localj = new com.tencent.mm.plugin.shootstub.a.j(localgy.fyR, localgy.fIK, localgy.fJB, localgy.fIL, localgy.fIX);
      be.uA().a(444, new d(this));
      return be.uA().d(localj);
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.SubCoreShootStub", "dealGameStart fail, ex = " + localIOException.getMessage());
    }
    return false;
  }

  private boolean Z(byte[] paramArrayOfByte)
  {
    try
    {
      gh localgh = new gh().aW(paramArrayOfByte);
      com.tencent.mm.plugin.shootstub.a.d locald = new com.tencent.mm.plugin.shootstub.a.d(localgh.fyR, localgh.fIK, localgh.fIL);
      be.uA().a(445, new e(this));
      return be.uA().d(locald);
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.SubCoreShootStub", "dealGameCheck fail, ex = " + localIOException.getMessage());
    }
    return false;
  }

  private static boolean a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, com.tencent.mm.am.a parama)
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(al.getPackageName(), "com.tencent.mm.plugin.shoot.remote.RemoteNetSceneMgr$RespReceiver"));
    localIntent.putExtra("remote_netscene_funcid_key", paramInt1);
    localIntent.putExtra("remote_netscene_errtype_key", paramInt2);
    localIntent.putExtra("remote_netscene_errcode_key", paramInt3);
    localIntent.putExtra("remote_netscene_errmsg_key", paramString);
    localIntent.putExtra("remote_request_type_key", 2);
    try
    {
      localIntent.putExtra("remote_netscene_req_buffer_key", ((n)paramaj.wJ()).wz());
      localIntent.putExtra("remote_netscene_resp_buffer_key", parama.toByteArray());
      aa.d("MicroMsg.SubCoreShootStub", "sendResp succ, type = " + paramInt1);
      al.getContext().sendBroadcast(localIntent);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        aa.e("MicroMsg.SubCoreShootStub", "sendResp fail, type = " + paramInt1 + ", ex = " + localException.getMessage());
    }
  }

  private boolean aa(byte[] paramArrayOfByte)
  {
    try
    {
      gm localgm = new gm().ba(paramArrayOfByte);
      com.tencent.mm.plugin.shootstub.a.f localf = new com.tencent.mm.plugin.shootstub.a.f(localgm.fyR, localgm.fIT, localgm.fIU, localgm.fIL, localgm.fIS, localgm.fIV, localgm.fIY, localgm.fIZ, localgm.fJa, localgm.fIX, localgm.fJb, localgm.fJc, localgm.fIR);
      be.uA().a(441, new f(this));
      return be.uA().d(localf);
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.SubCoreShootStub", "dealGameEnd fail, ex = " + localIOException.getMessage());
    }
    return false;
  }

  private boolean ab(byte[] paramArrayOfByte)
  {
    try
    {
      go localgo = new go().bc(paramArrayOfByte);
      com.tencent.mm.plugin.shootstub.a.g localg = new com.tencent.mm.plugin.shootstub.a.g(localgo.fyR, localgo.fIK, localgo.fBd);
      be.uA().a(447, new g(this));
      return be.uA().d(localg);
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.SubCoreShootStub", "dealGameGift fail, ex = " + localIOException.getMessage());
    }
    return false;
  }

  private boolean ac(byte[] paramArrayOfByte)
  {
    try
    {
      gq localgq = new gq().be(paramArrayOfByte);
      com.tencent.mm.plugin.shootstub.a.h localh = new com.tencent.mm.plugin.shootstub.a.h(localgq.fyR);
      be.uA().a(440, new h(this));
      return be.uA().d(localh);
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.SubCoreShootStub", "dealGameInit fail, ex = " + localIOException.getMessage());
    }
    return false;
  }

  private boolean ad(byte[] paramArrayOfByte)
  {
    try
    {
      gw localgw = new gw().bg(paramArrayOfByte);
      com.tencent.mm.plugin.shootstub.a.i locali = new com.tencent.mm.plugin.shootstub.a.i(localgw.fyR, localgw.fJd, localgw.dGR, localgw.fJA);
      be.uA().a(450, new i(this));
      return be.uA().d(locali);
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.SubCoreShootStub", "dealGameShare fail, ex = " + localIOException.getMessage());
    }
    return false;
  }

  private boolean ae(byte[] paramArrayOfByte)
  {
    try
    {
      hd localhd = new hd().bk(paramArrayOfByte);
      com.tencent.mm.plugin.shootstub.a.k localk = new com.tencent.mm.plugin.shootstub.a.k(localhd.fyR, localhd.fBd);
      be.uA().a(446, new j(this));
      return be.uA().d(localk);
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.SubCoreShootStub", "dealGameWish fail, ex = " + localIOException.getMessage());
    }
    return false;
  }

  private boolean af(byte[] paramArrayOfByte)
  {
    try
    {
      gk localgk = new gk().aY(paramArrayOfByte);
      com.tencent.mm.plugin.shootstub.a.e locale = new com.tencent.mm.plugin.shootstub.a.e(localgk.fyR);
      be.uA().a(516, new k(this));
      return be.uA().d(locale);
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.SubCoreShootStub", "dealGameConsume fail, ex = " + localIOException.getMessage());
    }
    return false;
  }

  public final void N(boolean paramBoolean)
  {
    com.tencent.mm.sdk.b.a.ayH().a("GameOperation", this.etA);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    com.tencent.mm.sdk.b.a.ayH().b("GameOperation", this.etA);
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.b
 * JD-Core Version:    0.6.2
 */