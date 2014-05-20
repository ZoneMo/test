.class Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;

.field final synthetic val$sendRequest:Lcom/qq/taf/jce/JceStruct;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;Lcom/qq/taf/jce/JceStruct;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;->this$0:Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;

    iput-object p2, p0, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;->val$sendRequest:Lcom/qq/taf/jce/JceStruct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;->val$sendRequest:Lcom/qq/taf/jce/JceStruct;

    invoke-static {v0}, Lcom/tencent/tmassistantsdk/protocol/ProtocolPackage;->buildRequest(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmassistantsdk/protocol/jce/Request;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/protocol/ProtocolPackage;->buildPostData(Lcom/tencent/tmassistantsdk/protocol/jce/Request;)[B

    move-result-object v0

    .line 59
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "http://masdk.3g.qq.com/"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v2, "User-Agent"

    const-string v3, "AssistantDownloader"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 65
    :try_start_0
    invoke-static {}, Lcom/tencent/tmassistantsdk/downloadservice/HttpClientUtil;->createHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/downloadservice/HttpClientUtil;->setProxy(Lorg/apache/http/client/HttpClient;)V

    .line 68
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 73
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 76
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 79
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 80
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 81
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 83
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;->this$0:Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;->val$sendRequest:Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {v0, v1, v5}, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;->onFinished(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    .line 113
    :goto_1
    return-void

    .line 86
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 90
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/protocol/ProtocolPackage;->unpackPackage([B)Lcom/tencent/tmassistantsdk/protocol/jce/Response;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/Response;->body:[B

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;->val$sendRequest:Lcom/qq/taf/jce/JceStruct;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/protocol/jce/Response;->body:[B

    invoke-static {v1, v0}, Lcom/tencent/tmassistantsdk/protocol/ProtocolPackage;->unpageageJceResponse(Lcom/qq/taf/jce/JceStruct;[B)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;->this$0:Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;->val$sendRequest:Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;->onFinished(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    goto :goto_1

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;->this$0:Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;->val$sendRequest:Lcom/qq/taf/jce/JceStruct;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;->onFinished(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
