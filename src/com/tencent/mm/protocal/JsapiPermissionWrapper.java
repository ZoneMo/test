package com.tencent.mm.protocal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.tencent.mm.protocal.a.lz;
import com.tencent.mm.sdk.platformtools.aa;

public class JsapiPermissionWrapper
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new i();
  public static final JsapiPermissionWrapper fxC = new JsapiPermissionWrapper(-1, -5);
  public static final JsapiPermissionWrapper fxD = new JsapiPermissionWrapper(0, 0);
  private int fxB;
  private int fxE;
  public int fxF = 0;
  public int fxG = 0;
  public int fxH = 0;
  public int fxI = 0;
  public int fxJ = 0;

  public JsapiPermissionWrapper()
  {
    this.fxB = 0;
    this.fxE = 0;
  }

  public JsapiPermissionWrapper(int paramInt1, int paramInt2)
  {
    this.fxB = paramInt1;
    this.fxE = paramInt2;
    aa.d("MicroMsg.JsapiPermissionWrapper", "edw <init>, " + this);
  }

  private JsapiPermissionWrapper(Parcel paramParcel)
  {
    this.fxB = paramParcel.readInt();
    this.fxE = paramParcel.readInt();
    this.fxF = paramParcel.readInt();
    this.fxG = paramParcel.readInt();
    this.fxH = paramParcel.readInt();
    this.fxI = paramParcel.readInt();
    this.fxJ = paramParcel.readInt();
  }

  public JsapiPermissionWrapper(lz paramlz)
  {
    if (paramlz == null)
      this.fxB = 0;
    for (this.fxE = 0; ; this.fxE = paramlz.fNd)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "edw <init>, " + this);
      return;
      this.fxB = paramlz.fJG;
    }
  }

  public final int avD()
  {
    return this.fxB;
  }

  public final int avH()
  {
    return this.fxE;
  }

  public final boolean avI()
  {
    if ((0x1 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowLog, ret = " + bool);
      return bool;
    }
  }

  public final boolean avJ()
  {
    if ((0x2 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowImagePreview, ret = " + bool);
      return bool;
    }
  }

  public final boolean avK()
  {
    boolean bool = true;
    if (this.fxF > 0)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowProfile true, hit limit times = " + this.fxF);
      this.fxF = (-1 + this.fxF);
      return bool;
    }
    if ((0x4 & this.fxB) > 0);
    while (true)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowProfile, ret = " + bool);
      return bool;
      bool = false;
    }
  }

  public final boolean avL()
  {
    if ((0x8000000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowOpenProductView, ret = " + bool);
      return bool;
    }
  }

  public final boolean avM()
  {
    if ((0x10000000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowOpenProductView, ret = " + bool);
      return bool;
    }
  }

  public final boolean avN()
  {
    boolean bool = true;
    if (this.fxH > 0)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowShareWeibo true, hit limit times = " + this.fxH);
      this.fxH = (-1 + this.fxH);
      return bool;
    }
    if ((0x8 & this.fxB) > 0);
    while (true)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowShareWeibo, ret = " + bool);
      return bool;
      bool = false;
    }
  }

  public final boolean avO()
  {
    boolean bool = true;
    if (this.fxI > 0)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowShareTimeline true, hit limit times = " + this.fxI);
      this.fxI = (-1 + this.fxI);
      return bool;
    }
    if ((0x10 & this.fxB) > 0);
    while (true)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowShareTimeline, ret = " + bool);
      return bool;
      bool = false;
    }
  }

  public final boolean avP()
  {
    if ((0x20 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowAddContact, ret = " + bool);
      return bool;
    }
  }

  public final boolean avQ()
  {
    boolean bool = true;
    if (this.fxG > 0)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowSendAppMsg true, hit limit times = " + this.fxG);
      this.fxG = (-1 + this.fxG);
      return bool;
    }
    if ((0x40 & this.fxB) > 0);
    while (true)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowSendAppMsg, ret = " + bool);
      return bool;
      bool = false;
    }
  }

  public final boolean avR()
  {
    if ((0x80 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowScanQrcode, ret = " + bool);
      return bool;
    }
  }

  public final boolean avS()
  {
    if ((0x100 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowAddEmoticon, ret = " + bool);
      return bool;
    }
  }

  public final boolean avT()
  {
    if ((0x200 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowHasEmoticon, ret = " + bool);
      return bool;
    }
  }

  public final boolean avU()
  {
    if ((0x400 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowCancelAddEmoticon, ret = " + bool);
      return bool;
    }
  }

  public final boolean avV()
  {
    if ((0x1000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowHideToolbar, ret = " + bool);
      return bool;
    }
  }

  public final boolean avW()
  {
    if ((0x2000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowShowToolbar, ret = " + bool);
      return bool;
    }
  }

  public final boolean avX()
  {
    if ((0x4000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowHideOptionMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean avY()
  {
    if ((0x8000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowShowOptionMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean avZ()
  {
    if ((0x10000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowGetNetworkType, ret = " + bool);
      return bool;
    }
  }

  public final boolean awA()
  {
    if ((0x100000 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowLaunch3RdApp, ret = " + bool);
      return bool;
    }
  }

  public final boolean awB()
  {
    if ((0x200000 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowWriteCommData, ret = " + bool);
      return bool;
    }
  }

  public final boolean awC()
  {
    if ((0x80000 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowAddDownloadTask, ret = " + bool);
      return bool;
    }
  }

  public final boolean awD()
  {
    if ((0x800000 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowOpenUrlByExtBrowser, ret = " + bool);
      return bool;
    }
  }

  public final boolean awE()
  {
    if ((0x1000000 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowOpenFileChooser, ret = " + bool);
      return bool;
    }
  }

  public final boolean awF()
  {
    if ((0x4000000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowGetBrandWCPayBindCardRequest, ret = " + bool);
      return bool;
    }
  }

  public final boolean awG()
  {
    if ((0x2000000 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowGeoLocation, ret = " + bool);
      return bool;
    }
  }

  public final boolean awa()
  {
    if ((0x20000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowCloseWindow, ret = " + bool);
      return bool;
    }
  }

  public final boolean awb()
  {
    if ((0x40000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowFontMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean awc()
  {
    if ((0x80000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowProfileMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean awd()
  {
    if ((0x100000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowAddContactMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean awe()
  {
    if ((0x200000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowSendAppMsgMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean awf()
  {
    if ((0x400000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowShareWeiboMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean awg()
  {
    if ((0x800000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowShareTimelineMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean awh()
  {
    if ((0x1000000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowDownloadInWebView, ret = " + bool);
      return bool;
    }
  }

  public final boolean awi()
  {
    if ((0x2000000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowGetIntallState, ret = " + bool);
      return bool;
    }
  }

  public final boolean awj()
  {
    if ((0x4000000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowJumpToInstallUrl, ret = " + bool);
      return bool;
    }
  }

  public final boolean awk()
  {
    if ((0x10000000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowDoPay, ret = " + bool);
      return bool;
    }
  }

  public final boolean awl()
  {
    if ((0x20000000 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowEditTransactionAddressReq, ret = " + bool);
      return bool;
    }
  }

  public final boolean awm()
  {
    if ((0x4000 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowGetRecentlyUserdAddressReq, ret = " + bool);
      return bool;
    }
  }

  public final boolean awn()
  {
    if ((0x2 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowGetHeadingAndPitch, ret = " + bool);
      return bool;
    }
  }

  public final boolean awo()
  {
    boolean bool = true;
    if (this.fxJ > 0)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "sendMailTimes true, hit limit times = " + this.fxJ);
      this.fxJ = (-1 + this.fxJ);
      return bool;
    }
    if ((0x8 & this.fxE) > 0);
    while (true)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowSendMail, ret = " + bool);
      return bool;
      bool = false;
    }
  }

  public final boolean awp()
  {
    if ((0x10 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowSendMainMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean awq()
  {
    if ((0x40 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowAddDownloadTask, ret = " + bool);
      return bool;
    }
  }

  public final boolean awr()
  {
    if ((0x80 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowCancelDownloadTask, ret = " + bool);
      return bool;
    }
  }

  public final boolean aws()
  {
    if ((0x100 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowQueryDownloadTask, ret = " + bool);
      return bool;
    }
  }

  public final boolean awt()
  {
    if ((0x200 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowInstallDownloadTask, ret = " + bool);
      return bool;
    }
  }

  public final boolean awu()
  {
    if ((0x400 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowNotifyDownloadTaskState, ret = " + bool);
      return bool;
    }
  }

  public final boolean awv()
  {
    if ((0x800 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowShareToBrandMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean aww()
  {
    if ((0x1000 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowCopyUrlMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean awx()
  {
    if ((0x2000 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowOpenWithBrowserMenu, ret = " + bool);
      return bool;
    }
  }

  public final boolean awy()
  {
    if ((0x4 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowShowWeixinCertified, ret = " + bool);
      return bool;
    }
  }

  public final boolean awz()
  {
    if ((0x10000 & this.fxE) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.JsapiPermissionWrapper", "allowOpenSpecificView, ret = " + bool);
      return bool;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public final void h(Bundle paramBundle)
  {
    paramBundle.putInt("jsapi_perm_wrapper_bitset", this.fxB);
    paramBundle.putInt("jsapi_perm_wrapper_bitset2", this.fxE);
    paramBundle.putInt("jsapi_perm_wrapper_profileLimitTimes", this.fxF);
    paramBundle.putInt("jsapi_perm_wrapper_sendAppMsgLimitTimes", this.fxG);
    paramBundle.putInt("jsapi_perm_wrapper_shareWeiboLimitTimes", this.fxH);
    paramBundle.putInt("jsapi_perm_wrapper_shareTimelineLimitTimes", this.fxI);
    paramBundle.putInt("jsapi_perm_wrapper_sendMailTimes", this.fxJ);
  }

  public final void i(Bundle paramBundle)
  {
    this.fxB = paramBundle.getInt("jsapi_perm_wrapper_bitset");
    this.fxE = paramBundle.getInt("jsapi_perm_wrapper_bitset2");
    this.fxF = paramBundle.getInt("jsapi_perm_wrapper_profileLimitTimes");
    this.fxG = paramBundle.getInt("jsapi_perm_wrapper_sendAppMsgLimitTimes");
    this.fxH = paramBundle.getInt("jsapi_perm_wrapper_shareWeiboLimitTimes");
    this.fxI = paramBundle.getInt("jsapi_perm_wrapper_shareTimelineLimitTimes");
    this.fxJ = paramBundle.getInt("jsapi_perm_wrapper_sendMailTimes");
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[bitset=0x");
    localStringBuilder.append(Integer.toHexString(this.fxB));
    localStringBuilder.append(", bitset2=0x");
    localStringBuilder.append(Integer.toHexString(this.fxE));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.fxB);
    paramParcel.writeInt(this.fxE);
    paramParcel.writeInt(this.fxF);
    paramParcel.writeInt(this.fxG);
    paramParcel.writeInt(this.fxH);
    paramParcel.writeInt(this.fxI);
    paramParcel.writeInt(this.fxJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.JsapiPermissionWrapper
 * JD-Core Version:    0.6.2
 */