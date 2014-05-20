package com.tencent.tmassistantsdk.network;

import com.qq.taf.jce.JceStruct;
import com.tencent.tmassistantsdk.downloadservice.HttpClientUtil;
import com.tencent.tmassistantsdk.protocol.ProtocolPackage;
import com.tencent.tmassistantsdk.protocol.jce.Response;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.util.ByteArrayBuffer;

class BaseHttpRequest$1
  implements Runnable
{
  BaseHttpRequest$1(BaseHttpRequest paramBaseHttpRequest, JceStruct paramJceStruct)
  {
  }

  public void run()
  {
    byte[] arrayOfByte1 = ProtocolPackage.buildPostData(ProtocolPackage.buildRequest(this.val$sendRequest));
    HttpPost localHttpPost = new HttpPost("http://masdk.3g.qq.com/");
    localHttpPost.addHeader("User-Agent", "AssistantDownloader");
    localHttpPost.setEntity(new ByteArrayEntity(arrayOfByte1));
    ByteArrayBuffer localByteArrayBuffer;
    try
    {
      HttpClient localHttpClient = HttpClientUtil.createHttpClient();
      HttpClientUtil.setProxy(localHttpClient);
      HttpResponse localHttpResponse = localHttpClient.execute(localHttpPost);
      if ((localHttpResponse == null) || (localHttpResponse.getStatusLine().getStatusCode() != 200))
        break label245;
      HttpEntity localHttpEntity = localHttpResponse.getEntity();
      if (localHttpEntity == null)
        break label245;
      localByteArrayBuffer = new ByteArrayBuffer((int)localHttpEntity.getContentLength());
      InputStream localInputStream = localHttpEntity.getContent();
      byte[] arrayOfByte2 = new byte[2048];
      while (true)
      {
        int i = localInputStream.read(arrayOfByte2);
        if (i == -1)
          break;
        localByteArrayBuffer.append(arrayOfByte2, 0, i);
      }
    }
    catch (Exception localException)
    {
      this.this$0.onFinished(this.val$sendRequest, null);
      return;
    }
    byte[] arrayOfByte3 = localByteArrayBuffer.buffer();
    if ((arrayOfByte3 != null) && (arrayOfByte3.length > 4))
    {
      Response localResponse = ProtocolPackage.unpackPackage(arrayOfByte3);
      if ((localResponse != null) && (localResponse.body != null))
      {
        JceStruct localJceStruct = ProtocolPackage.unpageageJceResponse(this.val$sendRequest, localResponse.body);
        if (localJceStruct != null)
        {
          this.this$0.onFinished(this.val$sendRequest, localJceStruct);
          return;
        }
      }
    }
    label245: this.this$0.onFinished(this.val$sendRequest, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.network.BaseHttpRequest.1
 * JD-Core Version:    0.6.2
 */