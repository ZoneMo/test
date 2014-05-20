package com.tencent.tmassistantsdk.network;

import com.qq.taf.jce.JceStruct;

public abstract class BaseHttpRequest
{
  private static final String REQUEST_SERVER_URL = "http://masdk.3g.qq.com/";

  protected abstract void onFinished(JceStruct paramJceStruct1, JceStruct paramJceStruct2);

  protected boolean sendRequest(JceStruct paramJceStruct)
  {
    if (paramJceStruct == null)
      return false;
    new Thread(new BaseHttpRequest.1(this, paramJceStruct)).start();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.network.BaseHttpRequest
 * JD-Core Version:    0.6.2
 */