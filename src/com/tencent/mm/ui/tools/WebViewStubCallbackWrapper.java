package com.tencent.mm.ui.tools;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.tencent.mm.plugin.webview.stub.ao;
import com.tencent.mm.plugin.webview.stub.ap;

public class WebViewStubCallbackWrapper
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new gd();
  private ao hmP;
  public int id;

  private WebViewStubCallbackWrapper(IBinder paramIBinder)
  {
    this.hmP = ap.r(paramIBinder);
  }

  public WebViewStubCallbackWrapper(ao paramao, int paramInt)
  {
    this.hmP = paramao;
    this.id = paramInt;
  }

  public final ao aNT()
  {
    return this.hmP;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof WebViewStubCallbackWrapper));
    while (((WebViewStubCallbackWrapper)paramObject).id != this.id)
      return false;
    return true;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStrongBinder(this.hmP.asBinder());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.WebViewStubCallbackWrapper
 * JD-Core Version:    0.6.2
 */